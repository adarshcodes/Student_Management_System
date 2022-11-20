##################

# NOTES

# This data is by no means authoritative; if you think you know better,
# go ahead and edit the file (and please send any changes to
# tz@iana.org for general use in the future).

# From Paul Eggert (2006-03-22):
# A good source for time zone historical data outside the U.S. is
# Thomas G. Shanks and Rique Pottenger, The International Atlas (6th edition),
# San Diego: ACS Publications, Inc. (2003).
#
# Gwillim Law writes that a good source
# for recent time zone data is the International Air Transport
# Association's Standard Schedules Information Manual (IATA SSIM),
# published semiannually.  Law sent in several helpful summaries
# of the IATA's data after 1990.
#
# Except where otherwise noted, Shanks & Pottenger is the source for
# entries through 1990, and IATA SSIM is the source for entries afterwards.
#
# Another source occasionally used is Edward W. Whitman, World Time Differences,
# Whitman Publishing Co, 2 Niagara Av, Ealing, London (undated), which
# I found in the UCLA library.
#
# A reliable and entertaining source about time zones is
# Derek Howse, Greenwich time and longitude, Philip Wilson Publishers (1997).
#
# I invented the abbreviations marked `*' in the following table;
# the rest are from earlier versions of this file, or from other sources.
# Corrections are welcome!
#		std dst
#		LMT	Local Mean Time
#	  8:00	WST WST	Western Australia
#	  8:45	CWST CWST Central Western Australia*
#	  9:00	JST	Japan
#	  9:30	CST CST	Central Australia
#	 10:00	EST EST	Eastern Australia
#	 10:00	ChST	Chamorro
#	 10:30	LHST LHST Lord Howe*
#	 11:30	NZMT NZST New Zealand through 1945
#	 12:00	NZST NZDT New Zealand 1946-present
#	 12:45	CHAST CHADT Chatham*
#	-11:00	SST	Samoa
#	-10:00	HST	Hawaii
#	- 8:00	PST	Pitcairn*
#
# See the `northamerica' file for Hawaii.
# See the `southamerica' file for Easter I and the Galapagos Is.

###############################################################################

# Australia

# From Paul Eggert (2005-12-08):
# <a href="http://www.bom.gov.au/climate/averages/tables/dst_times.shtml">
# Implementation Dates of Daylight Saving Time within Australia
# </a> summarizes daylight saving issues in Australia.

# From Arthur David Olson (2005-12-12):
# <a href="http://www.lawlink.nsw.gov.au/lawlink/Corporate/ll_agdinfo.nsf/pages/community_relations_daylight_saving">
# Lawlink NSW:Daylight Saving in New South Wales
# </a> covers New South Wales in particular.

# From John Mackin (1991-03-06):
# We in Australia have _never_ referred to DST as `daylight' time.
# It is called `summer' time.  Now by a happy coincidence, `summer'
# and `standard' happen to start with the same letter; hence, the
# abbreviation does _not_ change...
# The legislation does not actually define abbreviations, at least
# in this State, but the abbreviation is just commonly taken to be the
# initials of the phrase, and the legislation here uniformly uses
# the phrase `summer time' and does not use the phrase `daylight
# time'.
# Announcers on the Commonwealth radio network, the ABC (for Australian
# Broadcasting Commission), use the phrases `Eastern Standard Time'
# or `Eastern Summer Time'.  (Note, though, that as I say in the
# current australasia file, there is really no such thing.)  Announcers
# on its overseas service, Radio Australia, use the same phrases
# prefixed by the word `Australian' when referring to local times;
# time announcements on that service, naturally enough, are made in UTC.

# From Arthur David Olson (1992-03-08):
# Given the above, what's chosen for year-round use is:
#	CST	for any place operating at a GMTOFF of 9:30
#	WST	for any place operating at a GMTOFF of 8:00
#	EST	for any place operating at a GMTOFF of 10:00

# From Chuck Soper (2006-06-01):
# I recently found this Australian government web page on time zones:
# <http://www.australia.gov.au/about-australia-13time>
# And this government web page lists time zone names and abbreviations:
# <http://www.bom.gov.au/climate/averages/tables/daysavtm.shtml>

# From Paul Eggert (2001-04-05), summarizing a long discussion about "EST"
# versus "AEST" etc.:
#
# I see the following points of dispute:
#
# * How important are unique time zone abbreviations?
#
#   Here I tend to agree with the point (most recently made by Chris
#   Newman) that unique abbreviations should not be essential for proper
#   operation of software.  We have other instances of ambiguity
#   (e.g. "IST" denoting both "Israel Standard Time" and "Indian
#   Standard Time"), and they are not likely to go away any time soon.
#   In the old days, some software mistakenly relied on unique
#   abbreviations, but this is becoming less true with time, and I don't
#   think it's that important to cater to such software these days.
#
#   On the other hand, there is another motivation for unambiguous
#   abbreviations: it cuts down on human confusion.  This is
#   particularly true for Australia, where "EST" can mean one thing for
#   time T and a different thing for time T plus 1 second.
#
# * Does the relevant legislation indicate which abbreviations should be used?
#
#   Here I tend to think that things are a mess, just as they are in
#   many other countries.  We Americans are currently disagreeing about
#   which abbreviation to use for the newly legislated Chamorro Standard
#   Time, for example.
#
#   Personally, I would prefer to use common practice; I would like to
#   refer to legislation only for examples of common practice, or as a
#   tiebreaker.
#
# * Do Australians more often use "Eastern Daylight Time" or "Eastern
#   Summer Time"?  Do they typically prefix the time zone names with
#   the word "Australian"?
#
#   My own impression is that both "Daylight Time" and "Summer Time" are
#   common and are widely understood, but that "Summer Time" is more
#   popular; and that the leading "A" is also common but is omitted more
#   often than not.  I just used AltaVista advanced search and got the
#   following count of page hits:
#
#     1,103 "Eastern Summer Time" AND domain:au
#       971 "Australian Eastern Su