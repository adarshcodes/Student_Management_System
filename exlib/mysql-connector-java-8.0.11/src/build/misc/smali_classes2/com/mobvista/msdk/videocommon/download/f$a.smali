A%sT	1976
			-4:00	US	A%sT

# Cayman Is
# Zone	NAME		GMTOFF	RULES	FORMAT	[UNTIL]
Zone	America/Cayman	-5:25:32 -	LMT	1890		# Georgetown
			-5:07:12 -	KMT	1912 Feb    # Kingston Mean Time
			-5:00	-	EST

# Costa Rica
# Rule	NAME	FROM	TO	TYPE	IN	ON	AT	SAVE	LETTER/S
Rule	CR	1979	1980	-	Feb	lastSun	0:00	1:00	D
Rule	CR	1979	1980	-	Jun	Sun>=1	0:00	0	S
Rule	CR	1991	1992	-	Jan	Sat>=15	0:00	1:00	D
# IATA SSIM (1991-09) says the following was at 1:00;
# go with Shanks & Pottenger.
Rule	CR	1991	only	-	Jul	 1	0:00	0	S
Rule	CR	1992	only	-	Mar	15	0:00	0	S
# There are too many San Joses elsewhere, so we'll use `Costa Rica'.
# Zone	NAME		GMTOFF	RULES	FORMAT	[UNTIL]
Zone America/Costa_Rica	-5:36:20 -	LMT	1890		# San Jose
			-5:36:20 -	SJMT	1921 Jan 15 # San Jose Mean Time
			-6:00	CR	C%sT
# Coco
# no information; probably like America/Costa_Rica

# Cuba

# 