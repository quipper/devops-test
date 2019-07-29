# Quipper DevOps Test

## Task 1: Programming Test

### Restriction

- Use at least 1 programming code. You can use any kind of programming languages.
- Use at least 1 database which can use SQL or SQL-like query, such as PostgreSQL, MySQL, sqlite3, InfluxDB, etc...
- Take in real-world problems into consideration (e.g. performance, maintainability)
- Prepare instructions for setup and running using Docker or docker-compose and include it in the submission.
  - Make sure your programming language and database run on Docker. This is for reviewers to test easily.
  - Basically, reviewers run the submission using Docker for Mac.
  - When it didn't run properly, we may ask you back.

### Task details

- Parse 5 log files in `logs` directory and insert it into database.
  - Each log file is gziped and divided by daily
  - log file format is LTSV
- Write SQL to get following results
  - Get count of each `uri` per day

### How to submit

1. Clone this repository. Create new topic branch. Commit all necessary files such as source code.
2. Create `how-to-run.md` markdown file which includes below information; then commit it.
  - The name of programming language you use
  - The name of database software you use
  - The way how to run the program you create
  - What are the main aspects that you took into consideration (or compromised)
3. After all, run `./archive.sh`. This command creates `quipper-devops-test.zip` ZIP file from HEAD revision of current Git branch.
4. Send ZIP archive file to us as an attachment of email.

## Task 2: Architecture Discussion

Make a presentation about an architecture of the system below.
You can use any software, cloud services and protocols.
In the presentation, you can bring in documents or write it on whiteboard there.
No need to submit the document in advance.

### Asynchronous Job System

- We want to create asynchronous job system for our many web applications
  - such as encode video, create thumbnails
- We want to retry 5 times when asynchronous job is failed
- If asynchronous job failed 5 times, notify to our system admin
- After job finished, even if it's failed, notify the result to users
