# Source Generated with pycdc
# File: __main__goldmenu.pyc (Python 3.11)

import os
import sys
import json
import requests
import tkinter as tk
from tkinter import ttk, messagebox, simpledialog
import threading
import subprocess
import webbrowser
from datetime import datetime
import tempfile
import re
import time
import ssl
import urllib3
from requests.adapters import HTTPAdapter
from requests.packages.urllib3.util.retry import Retry

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

if getattr(sys, 'frozen', False):
    APPLICATION_PATH = os.path.dirname(sys.executable)
else:
    APPLICATION_PATH = os.path.dirname(os.path.abspath(__file__))

GITHUB_USERNAME = 'raphaelcsc911'
GITHUB_REPO = 'Macros'
GITHUB_BRANCH = 'main'
GITHUB_API_URL = f'''https://api.github.com/repos/{GITHUB_USERNAME}/{GITHUB_REPO}/contents/'''
UPDATE_MESSAGE_URL = f'''https://raw.githubusercontent.com/{GITHUB_USERNAME}/{GITHUB_REPO}/main/update_message.txt'''
INFO_URL = f'''https://raw.githubusercontent.com/{GITHUB_USERNAME}/{GITHUB_REPO}/main/info.txt'''
DOWNLOAD_DIR = os.path.join(APPLICATION_PATH, 'macros')
CONFIG_FILE = os.path.join(APPLICATION_PATH, 'gold_menu_config.json')
DISCORD_BOT_URL = 'https://goldkey.onrender.com'
DISCORD_INVITE = 'https://discord.gg/Gm3UV26FjJ'
AHK_V1_PATH = 'C:\\Program Files\\AutoHotkey\\v1.1.37.02\\AutoHotkeyU64.exe'
AHK_V2_PATH = 'C:\\Program Files\\AutoHotkey\\UX\\AutoHotkeyUX.exe'

VANTA_BLACK = '#000000'
DARK_FG = '#FFD700'
ACCENT_1 = '#0A0A0A'
ACCENT_2 = '#101010'
ACCENT_3 = '#1A1A1A'
HIGHLIGHT = '#252525'
GOLD_LIGHT = '#FFEE58'
GOLD_DARK = '#B8860B'

if not os.path.exists(DOWNLOAD_DIR):
    os.makedirs(DOWNLOAD_DIR)

def load_user_config():
    # Unsupported opcode: BEFORE_WITH (108)
    pass
# WARNING: Decompyle incomplete

def save_user_config(config):
    # Unsupported opcode: BEFORE_WITH (108)
    pass
# WARNING: Decompyle incomplete

def get_ahk_files_from_github():
    # Unsupported opcode: PUSH_EXC_INFO (105)
    response = requests.get(GITHUB_API_URL, verify = False)
    response.raise_for_status()
    files = response.json()
    ahk_files = []
    # WARNING: Decompyle incomplete

def check_for_updates():
    # Unsupported opcode: PUSH_EXC_INFO (105)
    response = requests.get(UPDATE_MESSAGE_URL, verify = False)
    if response.status_code == 200:
        return response.text.strip()
# WARNING: Decompyle incomplete

def get_info_text():
    # Unsupported opcode: PUSH_EXC_INFO (105)
    response = requests.get(INFO_URL, verify = False)
    if response.status_code == 200:
        return response.text.strip()
# WARNING: Decompyle incomplete

def log_message(message):
    # Unsupported opcode: BEFORE_WITH (108)
    log_file = os.path.join(APPLICATION_PATH, 'gold_menu_debug.log')
    timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    # WARNING: Decompyle incomplete

def test_network_connectivity():
    # Unsupported opcode: PUSH_EXC_INFO (105)
    response = requests.get('https://www.google.com', timeout = 10, verify = False)
    log_message(f'''Network test: Connected to Google - Status {response.status_code}''')
    response = requests.get(DISCORD_BOT_URL, timeout = 10, verify = False)
    log_message(f'''Network test: Connected to Discord bot - Status {response.status_code}''')
    return True
# WARNING: Decompyle incomplete

def verify_activation_key(key):
    # Unsupported opcode: PUSH_EXC_INFO (105)
    key = key.strip().upper()
    if not len(key) != 16 or key.isalnum():
        log_message(f'''Key format invalid: {key}''')
        return False
    log_message(f'''Attempting online verification for key: {key}''')
    session = requests.Session()
    retry_strategy = Retry(total = 3, backoff_factor = 0.5, status_forcelist = [
        429,
        500,
        502,
        503,
        504])
    adapter = HTTPAdapter(max_retries = retry_strategy)
    session.mount('http://', adapter)
    session.mount('https://', adapter)
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
        'Accept': 'application/json',
        'Content-Type': 'application/json' }
    response = session.post(f'''{DISCORD_BOT_URL}/verify_key''', json = {
        'key': key }, timeout = 15, headers = headers, verify = True)
# WARNING: Decompyle incomplete

def get_ahk_version(filename):
    # Unsupported opcode: BEFORE_WITH (108)
    pass
# WARNING: Decompyle incomplete

def show_custom_message(parent, title, message, message_type = ('info',)):
    # Unsupported opcode: MAKE_CELL (225)
    pass
# WARNING: Decompyle incomplete

class GoldMenu:
    def __init__(self):
        self.config = load_user_config()
        self.macros = []
        self.active_processes = { }
        self.window = tk.Tk()
        self.window.title('Gold Menu')
        self.window.geometry('900x700')
        self.window.configure(bg = VANTA_BLACK)
        self.window.minsize(800, 600)
        self.center_window()
        self.setup_styles()
        self.check_activation_on_start()

    def center_window(self):
        self.window.update_idletasks()
        width = self.window.winfo_width()
        height = self.window.winfo_height()
        x = self.window.winfo_screenwidth() // 2 - width // 2
        y = self.window.winfo_screenheight() // 2 - height // 2
        self.window.geometry(f'''{width}x{height}+{x}+{y}''')

    def setup_styles(self):
        style = ttk.Style()
        style.theme_use('clam')
        style.configure('Gold.TFrame', background = ACCENT_1)
        style.configure('Gold.TLabel', background = ACCENT_1, foreground = DARK_FG, font = ('Arial', 11))
        style.configure('Header.TLabel', background = ACCENT_1, foreground = DARK_FG, font = ('Arial', 20, 'bold'))
        style.configure('Gold.TButton', background = ACCENT_3, foreground = DARK_FG, font = ('Arial', 10, 'bold'), borderwidth = 1, focusthickness = 3, focuscolor = GOLD_LIGHT)
        style.map('Gold.TButton', background = [
            ('active', HIGHLIGHT),
            ('pressed', ACCENT_2)], foreground = [
            ('active', GOLD_LIGHT),
            ('pressed', GOLD_LIGHT)])
        style.configure('Treeview', background = ACCENT_2, foreground = DARK_FG, fieldbackground = ACCENT_2, font = ('Arial', 10))
        style.map('Treeview', background = [
            ('selected', HIGHLIGHT)], foreground = [
            ('selected', GOLD_LIGHT)])
        style.configure('Treeview.Heading', background = ACCENT_3, foreground = DARK_FG, font = ('Arial', 11, 'bold'))
        style.configure('TLabelframe', background = ACCENT_1, foreground = DARK_FG)
        style.configure('TLabelframe.Label', background = ACCENT_1, foreground = DARK_FG)

    def check_activation_on_start(self):
        if not test_network_connectivity():
            log_message('Network connectivity test failed')
        activation_key = self.config.get('activation_key', '')
        if activation_key:
            if verify_activation_key(activation_key):
                self.config['subscribed'] = True
                self.config['last_verification'] = time.time()
                save_user_config(self.config)
                self.create_main_interface()
                self.load_macros()
                self.check_updates()
                return None
        self.config['subscribed'] = None
        save_user_config(self.config)
        self.show_activation_screen()
        return None
        None.show_activation_screen()

    def show_activation_screen(self):
        # Unsupported opcode: MAKE_CELL (225)
        pass
# WARNING: Decompyle incomplete

    def create_main_interface(self):
        # Warning: block stack is not empty!
        for widget in self.window.winfo_children():
            widget.destroy()
        main_frame = ttk.Frame(self.window, style = 'Gold.TFrame')
        main_frame.pack(fill = tk.BOTH, expand = True, padx = 10, pady = 10)
        header_frame = ttk.Frame(main_frame, style = 'Gold.TFrame')
        header_frame.pack(fill = tk.X, pady = (0, 15))
        title_label = ttk.Label(header_frame, text = 'Gold Menu', style = 'Header.TLabel')
        title_label.pack(side = tk.LEFT)
        refresh_btn = ttk.Button(header_frame, text = 'Refresh', style = 'Gold.TButton', command = self.load_macros)
        refresh_btn.pack(side = tk.RIGHT, padx = 5)
        info_btn = ttk.Button(header_frame, text = 'Info', style = 'Gold.TButton', command = self.show_info)
        info_btn.pack(side = tk.RIGHT, padx = 5)
        list_label = tk.Label(main_frame, text = 'Available Macros', bg = ACCENT_1, fg = DARK_FG, font = ('Arial', 12, 'bold'))
        list_label.pack(fill = tk.X, pady = (10, 5))
        tree_frame = ttk.Frame(main_frame)
        tree_frame.pack(fill = tk.BOTH, expand = True, pady = 5)
        columns = ('Name', 'Hotkey', 'Status', 'Size')
        self.macro_tree = ttk.Treeview(tree_frame, columns = columns, show = 'headings', height = 12)
        for col in columns:
            self.macro_tree.heading(col, text = col)
        self.macro_tree.column('Name', width = 250, anchor = tk.W)
        self.macro_tree.column('Hotkey', width = 100, anchor = tk.CENTER)
        self.macro_tree.column('Status', width = 100, anchor = tk.CENTER)
        self.macro_tree.column('Size', width = 80, anchor = tk.CENTER)
        scrollbar = ttk.Scrollbar(tree_frame, orient = tk.VERTICAL, command = self.macro_tree.yview)
        self.macro_tree.configure(yscrollcommand = scrollbar.set)
        self.macro_tree.pack(side = tk.LEFT, fill = tk.BOTH, expand = True)
        scrollbar.pack(side = tk.RIGHT, fill = tk.Y)
        button_frame = ttk.Frame(main_frame, style = 'Gold.TFrame')
        button_frame.pack(fill = tk.X, pady = 10)
        ttk.Button(button_frame, text = 'Download', style = 'Gold.TButton', command = self.download_selected_macro).pack(side = tk.LEFT, padx = 5)
        ttk.Button(button_frame, text = 'Open', style = 'Gold.TButton', command = self.run_selected_macro).pack(side = tk.LEFT, padx = 5)
        ttk.Button(button_frame, text = 'Close', style = 'Gold.TButton', command = self.stop_selected_macro).pack(side = tk.LEFT, padx = 5)
        ttk.Button(button_frame, text = 'Set Hotkey', style = 'Gold.TButton', command = self.edit_hotkey).pack(side = tk.LEFT, padx = 5)
        ttk.Button(button_frame, text = 'Open Folder', style = 'Gold.TButton', command = self.open_macros_folder).pack(side = tk.RIGHT, padx = 5)
        self.status_bar = ttk.Label(self.window, text = 'Ready', relief = tk.SUNKEN, anchor = tk.W, style = 'Gold.TLabel')
        self.status_bar.pack(side = tk.BOTTOM, fill = tk.X)
        self.macro_tree.bind('<<TreeviewSelect>>', self.on_macro_select)
        self.load_macros()
        self.check_updates()
        return None

    def check_updates(self):
        # Unsupported opcode: MAKE_CELL (225)
        pass
# WARNING: Decompyle incomplete

    def load_macros(self):
        # Unsupported opcode: MAKE_CELL (225)
        pass
# WARNING: Decompyle incomplete

    def update_macro_list(self):
        # Warning: block stack is not empty!
        for item in self.macro_tree.get_children():
            self.macro_tree.delete(item)
        for macro in self.macros:
            filename = os.path.join(DOWNLOAD_DIR, f'''{macro['name']}.ahk''')
            status = 'Downloaded' if os.path.exists(filename) else 'Not downloaded'
            if macro['name'] in self.config.get('running_macros', { }):
                status = 'Running'
            hotkey = self.config['hotkeys'].get(macro['name'], macro.get('hotkey', 'Not set'))
            self.macro_tree.insert('', tk.END, values = (macro['name'], hotkey, status, macro.get('size', 'Unknown')))
        return None

    def download_selected_macro(self):
        # Unsupported opcode: MAKE_CELL (225)
        pass
# WARNING: Decompyle incomplete

    def run_selected_macro(self):
        # Unsupported opcode: PUSH_EXC_INFO (105)
        selection = self.macro_tree.selection()
        if not selection:
            show_custom_message(self.window, 'Warning', 'Please select a macro first!')
            return None
        item = None.macro_tree.item(selection[0])
        macro_name = item['values'][0]
        filename = os.path.join(DOWNLOAD_DIR, f'''{macro_name}.ahk''')
        if not os.path.exists(filename):
            show_custom_message(self.window, 'Warning', 'Please download the macro first!')
            return None
        ahk_exe = None(filename)
        if not os.path.exists(ahk_exe):
            show_custom_message(self.window, 'AutoHotkey Not Found', f'''AutoHotkey not found at {ahk_exe}.\nPlease make sure AutoHotkey is installed at this location.''')
            return None
        process = subprocess.Popen([
            ahk_exe,
            filename])
        self.active_processes[macro_name] = process
        if 'running_macros' not in self.config:
            self.config['running_macros'] = { }
        self.config['running_macros'][macro_name] = True
        save_user_config(self.config)
        self.macro_tree.set(selection[0], 'Status', 'Running')
        self.status_bar.config(text = f'''Running: {macro_name}''')
        return None
# WARNING: Decompyle incomplete

    def stop_selected_macro(self):
        # Unsupported opcode: CHECK_EXC_MATCH (106)
        selection = self.macro_tree.selection()
        if not selection:
            show_custom_message(self.window, 'Warning', 'Please select a macro first!')
            return None
        item = None.macro_tree.item(selection[0])
        macro_name = item['values'][0]
        if macro_name in self.active_processes:
            self.active_processes[macro_name].terminate()
            del self.active_processes[macro_name]
            if 'running_macros' in self.config and macro_name in self.config['running_macros']:
                del self.config['running_macros'][macro_name]
                save_user_config(self.config)
        self.macro_tree.set(selection[0], 'Status', 'Downloaded')
        self.status_bar.config(text = f'''Stopped: {macro_name}''')
        return None
# WARNING: Decompyle incomplete

    def edit_hotkey(self):
        # Unsupported opcode: MAKE_CELL (225)
        pass
# WARNING: Decompyle incomplete

    def open_macros_folder(self):
        # Unsupported opcode: PUSH_EXC_INFO (105)
        os.startfile(DOWNLOAD_DIR)
        return None
# WARNING: Decompyle incomplete

    def on_macro_select(self, event):
        selection = self.macro_tree.selection()
        if selection:
            item = self.macro_tree.item(selection[0])
            macro_name = item['values'][0]
            self.status_bar.config(text = f'''Selected: {macro_name}''')
        return None

    def show_info(self):
        # Unsupported opcode: MAKE_CELL (225)
        pass
# WARNING: Decompyle incomplete

if __name__ == '__main__':
    app = GoldMenu()
    app.window.mainloop()
    return None
