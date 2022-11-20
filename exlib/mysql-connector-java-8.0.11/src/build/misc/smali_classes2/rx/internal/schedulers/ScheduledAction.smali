changing back
# to standard time on 2012-11-04:
# http://www.radioreloj.cu/index.php/noticias-radio-reloj/36-nacionales/9961-regira-horario-normal-en-cuba-desde-el-domingo-cuatro-de-noviembre
# From Paul Eggert (2012-11-03):
# For now, assume the future rule is first Sunday in November.

# Rule	NAME	FROM	TO	TYPE	IN	ON	AT	SAVE	LETTER/S
Rule	Cuba	1928	only	-	Jun	10	0:00	1:00	D
Rule	Cuba	1928	only	-	Oct	10	0:00	0	S
Rule	Cuba	1940	1942	-	Jun	Sun>=1	0:00	1:00	D
Rule	Cuba	1940	1942	-	Sep	Sun>=1	0:00	0	S
Rule	Cuba	1945	1946	-	Jun	Sun>=1	0:00	1:00	D
Rule	Cuba	1945	1946	-	Sep	Sun>=1	0:00	0	S
Rule	Cuba	1965	only	-	Jun	1	0:00	1:00	D
Rule	Cuba	1965	only	-	Sep	30	0:00	0	S
Rule	Cuba	1966	only	-	May	29	0:00	1:00	D
Rule	Cuba	1966	only	-	Oct	2	0:00	0	S
Rule	Cuba	1967	only	-	Apr	8	0:00	1:00	D
Rule	Cuba	1967	1968	-	Sep	Sun>=8	0:00	0	S
Rule	Cuba	1968	only	-	Apr	14	0:00	1:00	D
Rule	Cuba	1969	1977	-	Apr	lastSun	0:00	1:00	D
Rule	Cuba	1969	1971	-	Oct	lastSun	0:00	0	S
Rule	Cuba	1972	1974	-	Oct	8	0:00	0	S
Rule	Cuba	1975	1977	-	Oct	lastSun	0:00	0	S
Rule	Cuba	1978	only	-	May	7	0:00	1:00	D
Rule	Cuba	1978	1990	-	Oct	Sun>=8	0:00	0	S
Rule	Cuba	1979	1980	-	Mar	Sun>=15	0:00	1:00	D
Rule	Cuba	1981	1985	-	May	Sun>=5	0:00	1:00	D
Rule	Cuba	1986	1989	-	Mar	Sun>=14	0:00	1:00	D
Rule	Cuba	1990	1997	-	Apr	Sun>=1	0:00	1:00	D
Rule	Cuba	1991	1995	-	Oct	Sun>=8	0:00s	0	S
Rule	Cuba	1996	only	-	Oct	 6	0:00s	0	S
Rule	Cuba	1997	only	-	Oct	12	0:00s	0	S
Rule	Cuba	1998	1999	-	Mar	lastSun	0:00s	1:00	D
Rule	Cuba	1998	2003	-	Oct	lastSun	0:00s	0	S
Rule	Cuba	2000	2004	-	Apr	Sun>=1	0:00s	1:00	D
Rule	Cuba	2006	2010	-	Oct	lastSun	0:00s	0	S
Rule	Cuba	2007	only	-	Mar	Sun>=8	0:00s	1:00	D
Rule	Cuba	2008	only	-	Mar	Sun>=15	0:00s	1:00	D
Rule	Cuba	2009	2010	-	Mar	Sun>=8	0:00s	1:00	D
Rule	Cuba	2011	only	-	Mar	Sun>=15	0:00s	1:00	D
Rule	Cuba	2011	only	-	Nov	13	0:00s	0	S
Rule	Cuba	2012	only	-	Apr	1	0:00s	1:00	D
Rule	Cuba	2012	max	-	Nov	Sun>=1	0:00s	0	S
Rule	Cuba	2013	max	-	Mar	Sun>=8	0:00s	1:00	D

# Zone	NAME		GMTOFF	RULES	FORMAT	[UNTIL]
Zone	America/Havana	-5:29:28 -	LMT	1890
			-5:29:36 -	HMT	1925 Jul 19 12:00 # Havana MT
			-5:00	Cuba	C%sT

# Dominica
# Zone	NAME		GMTOFF	RULES	FORMAT	[UNTIL]
Zone America/Dominica	-4:05:36 -	LMT	1911 Jul 1 0:01		# Roseau
			-4:00	-	AST

# Dominican Republic

# From Steffen Thorsen (2000-10-30):
# Enrique Morales reported to me that the Dominican Republic has changed the
# time zone to Eastern Standard Time as of Sunday 29 at 2 am....
# http://www.listin.com.do/antes/261000/republica/princi.html

# From Paul Eggert (2000-12-04):
# That URL (2000-10-26, in Spanish) says they planned to use US-style DST.

# From Rives McDow (2000-12-01):
# Dominican Republic changed its mind and presidential decree on Tuesday,
# November 28, 2000, with a new decree.  On Sunday, December 3 at 1:00 AM the
# Dominican Republic will be reverting to 8 hours from the International Date
# Line, and will not be using DST in the foreseeable future.  The reason they
# decided to use DST was to be in synch with Puerto Rico, who was also going
# to implement DST.  When Puerto Rico didn't implement DST, the president
# decided to revert.


# Rule	NAME	FROM	TO	TYPE	IN	ON	AT	SAVE	LETTER/S
Rule	DR	1966	only	-	Oct	30	0:00	1:00	D
Rule	DR	1967	only	-	Feb	28	0:00	0	S
Rule	DR	1969	1973	-	Oct	lastSun	0:00	0:30	HD
Rule	DR	1970	only	-	Feb	21	0:00	0	S
Rule	DR	1971	only	-	Jan	20	0:00	0	S
Rule	DR	1972	1974	-	Jan	21	0:00	0	S
# Zone	NAME		GMTOFF	RULES	FORMAT	[UNTIL]
Zone America/Santo_Domingo -4:39:36 -	LMT	1890
			-4:40	-	SDMT	1933 Apr  1 12:00 # S. Dom. MT
			-5:00	DR	E%sT	1974 Oct 27
			-4:00	-	AST	2000 Oct 29 02:00
			-5:00	US	E%sT	2000 Dec  3 01:00
			-4:00	-	AST

# El Salvador

# Rule	NAME	FROM	TO	TYPE	IN	ON	AT	SAVE	LETTER/S
Rule	Salv	1987	1988	-	May	Sun>=1	0:00	1:00	D
Rule	Salv	1987	1988	-	Sep	lastSun	0:00	0	S
# There are too many San Salvadors elsewhere, so use America/El_Salvador
# instead of America/San_Salvador.
# Zone	NAME		GMTOFF	RULES	FORMAT	[UNTIL]
Zone America/El_Salvador -5:56:48 -	LMT	1921		# San Salvador
			-6:00	Salv	C%sT

# Grenada
# Zone	NAME		GMTOFF	RULES	FORMAT	[UNTIL]
Zone	America/Grenada	-4:07:00 -	LMT	1911 Jul	# St George's
			-4:00	-	AST

# Guadeloupe
# Zone	NAME		GMTOFF	RULES	FORMAT	[UNTIL]
Zone America/Guadeloupe	-4:06:08 -	LMT	1911 Jun 8	# Pointe a Pitre
			-4:00	-	AST
# St Barthelemy
Link America/Guadeloupe	America/St_Barthelemy
# St Martin (French part)
Link America/Guadeloupe	America/Marigot

# Guatemala
#
# From Gwillim Law (2006-04-22), after a heads-up from Oscar van Vlijmen:
# Diario Co Latino, at
# http://www.diariocolatino.com/internacionales/detalles.asp?NewsID=8079,
# says in an article dated 2006-04-19 that the Guatemalan government had
# decided on that date to advance official time by 60 minutes, to lessen the
# impact of the elevated cost of oil....  Daylight saving time will last from
# 2006-04-29 24:00 (Guatemalan standard time) to 2006-09-30 (time unspecified).
# From Paul Eggert (2006-06-22):
# The Ministry of Energy and Mines, press release CP-15/2006
# (2006-04-19), says DST ends at 24:00.  See
# <http://www.sieca.org.gt/Sitio_publico/Energeticos/Doc/Medidas/Cambio_Horario_Nac_190406.pdf>.

# Rule	NAME	FROM	TO	TYPE	IN	ON	AT	SAVE	LETTER/S
Rule	Guat	1973	only	-	Nov	25	0:00	1:00	D
Rule	Guat	1974	only	-	Feb	24	0:00	0	S
Rule	Guat	1983	only	-	May	21	0:00	1:00	D
Rule	Guat	1983	only	-	Sep	22	0:00	0	S
Rule	Guat	1991	only	-	Mar	23	0:00	1:00	D
Rule	Guat	1991	only	-	Sep	 7	0:00	0	S
Rule	Guat	2006	only	-	Apr	30	0:00	1:00	D
Rule	Guat	2006	only	-	Oct	 1	0:00	0	S
# Zone	NAME		GMTOFF	RULES	FORMAT	[UNTIL]
Zone America/Guatemala	-6:02:04 -	LMT	1918 Oct 5
			-6:00	Guat	C%sT

# Haiti
# From Gwillim Law (2005-04-15):
# Risto O. Nykanen wrote me that Haiti is now on DST.
# I searched for confirmation, and I found a
# <a href="http://www.haitianconsulate.org/time.doc"> press release
# on the Web page of the Haitian Consulate in Chicago (2005-03-31),
# </a>.  Translated from French, it says:
#
#  "The Prime Minister's Communication Office notifies the public in general
#   and the press in particular that, following a decision of the Interior
#   Ministry and the Territorial Collectivities [I suppose that means the
#   provinces], Haiti will move to Eastern Daylight Time in the night from next
#   Saturday the 2nd to Sunday the 3rd.
#
#  "Consequently, the Prime Minister's Communication Office wishes to inform
#   the population that the country's clocks will be set forward one hour
#   starting at midnight.  This provision will hold until the last Saturday in
#   October 2005.
#
#  "Port-au-Prince, March 31, 2005"
#
# From Steffen Thorsen (2006-04-04):
# I have been informed by users that Haiti observes DST this year like
# last year, so the current "only" rule for 2005 might be changed to a
# "max" rule or to last until 2006. (Who knows if they will observe DST
# next year or if they will extend their DST like US/Canada next year).
#
# I have found this article about it (in French):
# http://www.haitipressnetwork.com/news.cfm?articleID=7612
#
# The reason seems to be an energy crisis.

# From Stephen Colebourne (2007-02-22):
# Some IATA info: Haiti won't be having DST in 2007.

# From Steffen Thorsen (2012-03-11):
# According to several news sources, Haiti will observe DST this year,
# apparently using the same start and end date as USA/Canada.
# So this means they have already changed their time.
#
# (Sources in French):
# <a href="http://www.alterpresse.org/spip.php?article12510">
# http://www.alterpresse.org/spip.php?article12510
# </a>
# <a href="http://radiovision2000haiti.net/home/?p=13253">
# http://radiovision2000haiti.net/home/?p=13253
# </a>
#
# Our coverage:
# <a href="http://www.timeanddate.com/news/time/haiti-dst-2012.html">
# http://www.timeanddate.com/news/time/haiti-dst-2012.html
# </a>

# From Arthur David Olson (2012-03-11):
# The alterpresse.org source seems to show a US-style leap from 2:00 a.m. to
# 3:00 a.m. rather than the traditional Haitian jump at midnight.
# Assume a US-style fall back as well XXX.
# Do not yet assume that the change carries forward past 2012 XXX.

# Rule	NAME	FROM	TO	TYPE	IN	ON	AT	SAVE	LETTER/S
Rule	Haiti	1983	only	-	May	8	0:00	1:00	D
Rule	Haiti	1984	1987	-	Apr	lastSun	0:00	1:00	D
Rule	Haiti	1983	1987	-	Oct	lastSun	0:00	0	S
# Shanks & Pottenger say AT is 2:00, but IATA SSIM (1991/1997) says 1:00s.
# Go with IATA.
Rule	Haiti	1988	1997	-	Apr	Sun>=1	1:00s	1:00	D
Rule	Haiti	1988	1997	-	Oct	lastSun	1:00s	0	S
Rule	Haiti	2005	2006	-	Apr	Sun>=1	0:00	1:00	D
Rule	Haiti	2005	2006	-	Oct	lastSun	0:00	0	S
Rule	Haiti	2012	only	-	Mar	Sun>=8	2:00	1:00	D
Rule	Haiti	2012	only	-	Nov	Sun>=1	2:00	0	S
# Zone	NAME		GMTOFF	RULES	FORMAT	[UNTIL]
Zone America/Port-au-Prince -4:49:20 -	LMT	1890
			-4:49	-	PPMT	1917 Jan 24 12:00 # P-a-P MT
			-5:00	Haiti	E%sT

# Honduras
# Shanks & Pottenger say 1921 Jan 1; go with Whitman's more precise Apr 1.

# From Paul Eggert (2006-05-05):
# worldtimezone.com reports a 2006-05-02 Spanish-language AP article
# saying Honduras will start using DST midnight Saturday, effective 4
# months until September.  La Tribuna reported today
# <http://www.latribuna.hn/99299.html> that Manuel Zelaya, the president
# of Honduras, refused to back down on this.

# From Jesper Norgaard Welen (2006-08-08):
# It seems that Honduras has returned from DST to standard time this Monday at
# 00:00 hours (prolonging Sunday to 25 hours duration).
# http://www.worldtimezone.com/dst_news/dst_news_honduras04.html

# From Paul Eggert (2006-08-08):
# Also see Diario El Heraldo, The country returns to standard time (2006-08-08)
# <http://www.elheraldo.hn/nota.php?nid=54941&sec=12>.
# It mentions executive decree 18-2006.

# From Steffen Thorsen (2006-08-17):
# Honduras will observe DST from 2007 to 2009, exact dates are not
# published, I have located this authoritative source:
# http://www.presidencia.gob.hn/noticia.aspx?nId=47

# From Steffen Thorsen (2007-03-30):
# http://www.laprensahn.com/pais_nota.php?id04962=7386
# So it seems that Honduras will not enter DST this year....

# Rule	NAME	FROM	TO	TYPE	IN	ON	AT	SAVE	LETTER/S
Rule	Hond	1987	1988	-	May	Sun>=1	0:00	1:00	D
Rule	Hond	1987	1988	-	Sep	lastSun	0:00	0	S
Rule	Hond	2006	only	-	May	Sun>=1	0:00	1:00	D
Rule	Hond	2006	only	-	Aug	Mon>=1	0:00	0	S
# Zone	NAME		GM