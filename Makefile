include campaign.def

LANGS=$(shell cat po/LINGUAS)
POFILES=${LANGS:=.po}
DUMMYPOFILES=${LANGS:=.nop}
UPDATEPOFILES=${LANGS:=.po-update}
GMOFILES=${LANGS:=.gmo}
CATALOGS=${LANGS:=.gmo}

all: setup
	cd po && (make update-po || (make clean && false))
	for locale in `cat po/LINGUAS`; do \
		if test -f po/$${locale}.gmo; then \
			mkdir -p ${CAMPAIGN}/translations/$${locale}/LC_MESSAGES ;\
			cp po/$${locale}.gmo ${CAMPAIGN}/translations/$${locale}/LC_MESSAGES/${DOMAIN}.mo ;\
		else \
			rm -f ${CAMPAIGN}/translations/$${locale}/LC_MESSAGES/${DOMAIN}.mo; \
			if test -d ${CAMPAIGN}/translations/$${locale}; then \
				rmdir ${CAMPAIGN}/translations/$${locale}/LC_MESSAGES; \
				rmdir ${CAMPAIGN}/translations/$${locale}; \
			fi; \
		fi; \
	done
	cd po && make clean

# The comment-remove command is seperate from the Makevars insertion line.
# This arrangement allows for comments from Makevars to be stripped too.
setup:
	sed < po/Makefile.in.in > po/Makefile \
		-e "s/@CAMPAIGN@/${CAMPAIGN}/" \
		-e "s/@PACKAGE@/${DOMAIN}/" \
		-e "s/@BRANCH@/${BRANCH}/" \
		-e "s/@srcdir@/./" \
		-e "s/@top_srcdir@/../" \
		-e "s,@MSGFMT@,msgfmt," \
		-e "s,@MSGMERGE@,msgmerge," \
		-e "s/@POFILES@/${POFILES}/" \
		-e "s/@DUMMYPOFILES@/${DUMMYPOFILES}/" \
		-e "s/@UPDATEPOFILES@/${UPDATEPOFILES}/" \
		-e "s/@GMOFILES@/${GMOFILES}/" \
		-e "s/@CATALOGS@/${CATALOGS}/" \
		-e "/Makevars gets inserted here/ r po/Makevars"
	sed -i po/Makefile -e "/^[ \t]*#/d"

mostlyclean:
	-cd po && make mostlyclean

clean:
	-cd po && make clean

distclean:
	-cd po && make distclean

realclean: distclean
	rm -rf ${CAMPAIGN}/translations
