local usbWatcher = nil

function usbDeviceCallback(data)
    if (data["productName"] == "USB Keyboard") then
        if (data["eventType"] == "added") then
            hs.execute('/Applications/Karabiner.app/Contents/Library/bin/karabiner select 1')
            hs.notify.show('Keyboard Profile Changed', '', 'External Keyboard', '')
        elseif (data["eventType"] == "removed") then
            hs.execute('/Applications/Karabiner.app/Contents/Library/bin/karabiner select 0')
            hs.notify.show('Keyboard Profile Changed', '', 'Built-in Keyboard', '')
        end
    end
end

usbWatcher = hs.usb.watcher.new(usbDeviceCallback)
usbWatcher:start()

function shadow()
	hs.window.frontmostWindow().setShadows(false)
end

-- switcher = hs.window.switcher.new()
-- hs.hotkey.bind('cmd-ctrl', 'tab', 'next', function()switcher:next()end)
-- hs.hotkey.bind('cmd-ctrl-shift', 'tab', 'previous', function()switcher:previous()end)

-- function tabs()
-- 	app = hs.application.frontmostApplication()
-- 	hs.tabs.enableForApp(app)
-- end

-- function f1()
-- 	hs.tabs.focusTab(hs.application.frontmostApplication(), 1)
-- end

-- function f2()
-- 	hs.tabs.focusTab(hs.application.frontmostApplication(), 2)
-- end

-- hs.hotkey.bind("⌘+⌃+⌥", "tab", "?", nil, tabs, nil)
-- hs.hotkey.bind("⌘", "1", "?", nil, f1, nil)
-- hs.hotkey.bind("⌘", "2", "?", nil, f2, nil)

