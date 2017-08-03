# Quipper DevOps Test

## Task: Programming Test

### Restriction

- Use at least 1 programming code. You can use any kind of programming languages.
- Use at least 1 database which can use SQL or SQL-like query, such as PostgreSQL, MySQL, sqlite3, Google BigQuery, InfluxDB, etc...

### Task details

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
