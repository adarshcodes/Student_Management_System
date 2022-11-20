instruments used to measure standard time are to be
# adjusted/changed to three oclock (3:00am or 0300Hrs).
#
# Margaret Fruean ACTING CHIEF EXECUTIVE OFFICER MINISTRY OF COMMERCE,
# INDUSTRY AND LABOUR 28th February 2011

# From David Zuelke (2011-05-09):
# Subject: Samoa to move timezone from east to west of international date line
#
# <a href="http://www.morningstar.co.uk/uk/markets/newsfeeditem.aspx?id=138501958347963">
# http://www.morningstar.co.uk/uk/markets/newsfeeditem.aspx?id=138501958347963
# </a>

# From Mark Sim-Smith (2011-08-17):
# I have been in contact with Leilani Tuala Warren from the Samoa Law
# Reform Commission, and she has sent me a copy of the Bill that she
# confirmed has been passed...Most of the sections are about maps rather
# than the time zone change, but I'll paste the relevant bits below. But
# the essence is that at midnight 29 Dec (UTC-11 I suppose), Samoa
# changes from UTC-11 to UTC+13:
#
# International Date Line Bill 2011
#
# AN ACT to provide for the change to standard time in Samoa and to make
# consequential amendments to the position of the International Date
# Line, and for related purposes.
#
# BE IT ENACTED by the Legislative Assembly of Samoa in Parliament
# assembled as follows:
#
# 1. Short title and commencement-(1) This Act may be cited as the
# International Date Line Act 2011. (2) Except for section 5(3) this Act
# commences at 12 o'clock midnight, on Thursday 29th December 2011. (3)
# Section 5(3) commences on the date of assent by the Head of State.
#
# [snip]
#
# 3. Interpretation - [snip] "Samoa standard time" in this Act and any
# other statute of Samoa which refers to 'Samoa standard time' means the
# time 13 hours in advance of Co-ordinated Universal Time.
#
# 4. Samoa standard time - (1) Upon the commencement of this Act, Samoa
# standard time shall be set at 13 hours in advance of Co-ordinated
# Universal Time for the whole of Samoa. (2) All references to Samoa's
# time zone and to Samoa standard time in Samoa in all legislation and
# instruments after the commencement of this Act shall be references to
# Samoa standard time as provided for in this Act. (3) Nothing in this
# Act affects the provisions of the Daylight Saving Act 2009, except that
# it defines Samoa standard time....

# From Laupue Raymond Hughes (2011-09-02):
# <a href="http://www.mcil.gov.ws/mcil_publications.html">
# http://www.mcil.gov.ws/mcil_publications.html
# </a>
#
# here is the official website publication for Samoa DST and dateline change
#
# DST
# Year	End	Time	Start	Time
# 2011	- - -	- - -	24 September	3:00am to 4:00am
# 2012	01 April	4:00am to 3:00am	- - -	- - -
#
# Dateline Change skip Friday 30th Dec 2011
# Thursday 29th December 2011	23:59:59 Hours
# Saturday 31st December 2011	00:00:00 Hours
#
# Clarification by Tim Parenti (2012-01-03):
# Although Samoa has used Daylight Saving Time in the 2010-2011 and 2011-2012
# seasons, there is not yet any indication that this trend will continue on
# a regular basis. For now, we have explicitly listed the transitions below.
#
# From Nicky (2012-09-10):
# Daylight Saving Time commences on Sunday 30th September 2012 and
# ends on Sunday 7th of April 2013.
#
# Please find link below for more information.
# http://www.mcil.gov.ws/mcil_publications.html
#
# That publication also includes dates for Summer of 2013/4 as well
# which give the impression of a pattern in selecting dates for the
# future, so for now, we will guess this will continue.

# Western Samoa
# Rule	NAME	FROM	TO	TYPE	IN	ON	AT	SAVE	LETTER/S
Rule	WS	2012	max	-	Sep	lastSun	3:00	1	D
Rule	WS	2012	max	-	Apr	Sun>=1	4:00	0	-
# Zone	NAME		GMTOFF	RULES	FORMAT	[UNTIL]
Zone Pacific/Apia	 12:33:04 -	LMT	1879 Jul  5
			-11:26:56 -	LMT	1911
			-11:30	-	SAMT	1950		# Samoa Time
			-11:00	-	WST	2010 Sep 26
			-11:00	1:00	WSDT	2011 Apr 2 4:00
			-11:00	-	WST	2011 Sep 24 3:00
			-11:00	1:00	WSDT	2011 Dec 30
			 13:00	1:00	WSDT	2012 Apr Sun>=1 4:00
			 13:00	WS	WS%sT

# Solomon Is
# excludes Bougainville, for which see Papua New Guinea
# Zone	NAME		GMTOFF	RULES	FORMAT	[UNTIL]
Zone Pacific/Guadalcanal 10:39:48 -	LMT	1912 Oct	# Honiara
			11:00	-	SBT	# Solomon Is Time

# Tokelau Is
#
# From Gwillim Law (2011-12-29)
# A correspondent informed me that Tokelau, like Samoa, will be skipping
# December 31 this year ...
#
# From Steffen Thorsen (2012-07-25)
# ... we double checked by calling hotels and offices based in Tokelau asking
# about the time there, and they all told a time that agrees with UTC+13....
# Shanks says UTC-10 from 1901 [but] ... there is a good chance the change
# actually was to UTC-11 back then.
#
# From Paul Eggert (2012-07-25)
# A Google Books snippet of Appendix to the Journals of the House of
# Representatives of New Zealand, Session 1948,
# <http://books.google.com/books?id=ZaVCAQAAIAAJ>, page 65, says Tokelau
# was "11 hours slow on G.M.T."  Go with Thorsen and assume Shanks & Pottenger
# are off by an hour starting in 1901.

# Zone	NAME		GMTOFF	RULES	FORMAT	[UNTIL]
Zone	Pacific/Fakaofo	-1