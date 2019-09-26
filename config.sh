#!/bin/bash

# The file to play when the stream is offline, should be full path, and must be readable by nginx
# The file should have the same resolution and bitrate as your actual stream
# Ex : /home/stream/my_video.mp4
offfi="CHANGE_ME"

# Should be some random unguessable string of letters and numers, with no space, this will be your stream key for streamRIP
# Ex : djUhdg654dfr4sAZE
secret="CHANGE_ME"

# Choose what kind of backup for stream A should be
# Ex : "stream" or "video"
backuptype="stream"

# The RTMP endpoint, ie: your Twitch RTMP link
# Ex :  rtmp://live-cdg.twitch.tv/app/{your_stream_key}
rtmpe="CHANGE_ME"

# The RTMP ingest stream for main stream (A), you probaly don't need to change this if you're using streamRIP nginx config
rtmpA="rtmp://127.0.0.1/stream_A/$secret"

# The RTMP ingest stream for backup stream (B), you probaly don't need to change this if you're using streamRIP nginx config
rtmpB="rtmp://127.0.0.1/stream_B/$secret"

###############
# Don't touch #
###############
wd=/tmp/streamrip
pfi=$wd/streamrip
offpidfi=$wd/offline_pid
onpidfi=$wd/online_pid
offlo=$wd/offline_lock
onlo=$wd/online_lock