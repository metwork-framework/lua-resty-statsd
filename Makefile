test:
	find . -type f -name "*.lua" -exec ./test_globals_in_lua.sh {} \;
