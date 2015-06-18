# Quipper DevOps Test

## Task 1: Programming Test

### Restriction

- Use at least 1 programming code. You can use any kind of programming languages.
- Use at least 1 database which can use SQL or SQL-like query, such as PostgreSQL, MySQL, sqlite3, Google BigQuery, InfluxDB, etc...

### Task

- Parse 5 log files in `logs` directory and insert it into database.
  - Each log file is gziped and divided by daily
  - log file format is LTSV
- Write SQL to get following results
  - Get count of each `uri` per day
  - Get top 10 of `reqtime` per day

### How to submit

1. Clone this repository. Create new topic branch. Commit all necessary files such as source code.
2. Create `how-to-run.md` markdown file which includes below information; then commit it.
  - The name of programming language you use
  - The name of database software you use
  - The way how to run the program you create
3. After all, run `./archive.sh`. This command creates `quipper-devops-test.zip` ZIP file from HEAD revision of current Git branch.
4. Send ZIP archive file to us as an attachment of email.

## Task 2: Architecture Discussion

Select one of systems below and design architecture of the system.
You can use any software, cloud services and protocols.

1. Asynchronous Job System
2. Universal Push Notification System

### Asynchronous Job System

- We want to create asynchronous job system for our many web applications
  - such as encode video, create thumbnails
- We want to retry 5 times when asynchronous job is failed
- If asynchronous job failed 5 times, notify to our system admin
- After job finished, even if it's failed, notify the result to users

### Universal Notification System

- Provide common interface to push notification system of Android, iOS and Desktop (Browser).
- If we want to track open rate of each push notification, is it possible? Is there any restriction?
