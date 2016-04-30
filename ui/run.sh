#!/usr/bin/env bash
echo "Running Http Server Listening At Port 80 ...."

( exec ./node_modules/gulp/bin/gulp.js serve )
