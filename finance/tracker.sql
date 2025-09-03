CREATE TABLE IF NOT EXISTS logs (
	logs_id INTEGER PRIMARY KEY AUTOINCREMENT,
	date TEXT,
	time TEXT,
	type TEXT,
	category TEXT,
	amount INTEGER,
	item TEXT,
	client TEXT
)
