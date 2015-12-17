on run {targetBuddyPhone, targetFile}
    tell application "Messages"
        # open file and create list of texts
        set fileHandle to open for access targetFile
        set texts to paragraphs of (read fileHandle)
        close access fileHandle
        # pick random text and send to buddy
        set randomText to some item of texts
        set targetService to 1st service whose service type = iMessage
        set targetBuddy to buddy targetBuddyPhone of targetService
        send randomText to targetBuddy
    end tell
end run

