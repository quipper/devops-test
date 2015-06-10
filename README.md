# Quipper Infra Test

## Task 1: Programming Test

### Restriction

- Use at least 1 programming code. You can use any kind of programming languages.
- Use at least 1 RDBMS database or database which can use SQL-like query, such as Google BigQuery, InfluxDB, etc...

### Task

- Parse 5 log files in `logs` directory and insert it into database.
  - Each log file is gziped and divided by daily
  - log file format is LTSV
- Write SQL to get following results
  - Get count of each `uri` per day
  - Get top 10 of `reqtime` per day

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
