#!/usr/bin/env osascript

if application "iTunes" is running then
  tell application "iTunes"
    set script_name to name of the current track
    set script_artist to artist of the current track
    set script_album to album of the current track

    try
      return script_name & " - " & script_artist & "/" & script_album
    on error err
    end try
  end tell
end if
