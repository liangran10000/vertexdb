# Base Io build system
# Written by Jeremy Tregunna <jeremy.tregunna@me.com>
#
# Find libevent.

FIND_PATH(EVENT_INCLUDE_DIR event.h)

SET(EVENT_NAMES ${EVENT_NAMES} event libevent)
FIND_LIBRARY(EVENT_LIBRARY NAMES ${EVENT_NAMES} PATH)

IF(EVENT_INCLUDE_DIR AND EVENT_LIBRARY)
	SET(EVENT_FOUND TRUE)
ENDIF(EVENT_INCLUDE_DIR AND EVENT_LIBRARY)

IF(EVENT_FOUND)
	IF(NOT Event_FIND_QUIETLY)
		MESSAGE(STATUS "Found Event: ${EVENT_LIBRARY}")
	ENDIF (NOT Event_FIND_QUIETLY)
ELSE(EVENT_FOUND)
	IF(Event_FIND_REQUIRED)
		MESSAGE(FATAL_ERROR "Could not find event")
	ENDIF(Event_FIND_REQUIRED)
ENDIF (EVENT_FOUND)