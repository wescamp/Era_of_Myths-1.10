# Makefile for PO directory in any package using GNU gettext.
# Copyright (C) 1995-1997, 2000-2004 by Ulrich Drepper <drepper@gnu.ai.mit.edu>
#
# This file can be copied and used freely without restrictions.  It can
# be used in projects which are not available under the GNU General Public
# License but which still want to provide support for the GNU gettext
# functionality.
# Please note that the actual code of GNU gettext is covered by the GNU
# General Public License and is *not* in the public domain.
#
# Origin: gettext-0.14.1-5
# Modified by Yann Dirson for Battle for Wesnoth, for:
# - WML files support
# - proper behaviour when msgfmt is missing
# - support for relative localedir

PACKAGE = wesnoth-Era_of_Myths
VERSION = @VERSION@

SHELL = /bin/sh


srcdir = .
top_srcdir = ..
VPATH = .

prefix = @prefix@
exec_prefix = @exec_prefix@
datadir = @datadir@
DATADIR = @DATADIR@
LOCALEDIR = @LOCALEDIR@
localedir = @FULLLOCALEDIR@
gettextsrcdir = $(datadir)/gettext/po

INSTALL = @INSTALL@
INSTALL_DATA = /usr/bin/install -m644
MKINSTALLDIRS = @MKINSTALLDIRS@
mkinstalldirs = $(SHELL) $(MKINSTALLDIRS)

GMSGFMT = msgfmt
MSGFMT = msgfmt
XGETTEXT = true
WMLXGETTEXT := $(top_srcdir)/utils/wmlxgettext
MSGMERGE = msgmerge
MSGMERGE_UPDATE = msgmerge --update
MSGINIT = msginit
MSGCONV = msgconv
MSGFILTER = msgfilter

POFILES = af.po ang.po ang@latin.po ar.po bg.po ca.po ca_ES@valencia.po cs.po da.po de.po el.po en_GB.po en@shaw.po es.po eo.po et.po eu.po fi.po fr.po fur_IT.po ga.po gl.po he.po hr.po hu.po id.po is.po it.po ja.po ko.po la.po lt.po lv.po mk.po mr.po nl.po nb_NO.po pl.po pt.po pt_BR.po racv.po ro.po ru.po sk.po sl.po sr.po sr@ijekavian.po sr@ijekavianlatin.po sr@latin.po sv.po tl.po tr.po uk.po vi.po zh_CN.po zh_TW.po
GMOFILES = af.gmo ang.gmo ang@latin.gmo ar.gmo bg.gmo ca.gmo ca_ES@valencia.gmo cs.gmo da.gmo de.gmo el.gmo en_GB.gmo en@shaw.gmo es.gmo eo.gmo et.gmo eu.gmo fi.gmo fr.gmo fur_IT.gmo ga.gmo gl.gmo he.gmo hr.gmo hu.gmo id.gmo is.gmo it.gmo ja.gmo ko.gmo la.gmo lt.gmo lv.gmo mk.gmo mr.gmo nl.gmo nb_NO.gmo pl.gmo pt.gmo pt_BR.gmo racv.gmo ro.gmo ru.gmo sk.gmo sl.gmo sr.gmo sr@ijekavian.gmo sr@ijekavianlatin.gmo sr@latin.gmo sv.gmo tl.gmo tr.gmo uk.gmo vi.gmo zh_CN.gmo zh_TW.gmo
UPDATEPOFILES = af.po-update ang.po-update ang@latin.po-update ar.po-update bg.po-update ca.po-update ca_ES@valencia.po-update cs.po-update da.po-update de.po-update el.po-update en_GB.po-update en@shaw.po-update es.po-update eo.po-update et.po-update eu.po-update fi.po-update fr.po-update fur_IT.po-update ga.po-update gl.po-update he.po-update hr.po-update hu.po-update id.po-update is.po-update it.po-update ja.po-update ko.po-update la.po-update lt.po-update lv.po-update mk.po-update mr.po-update nl.po-update nb_NO.po-update pl.po-update pt.po-update pt_BR.po-update racv.po-update ro.po-update ru.po-update sk.po-update sl.po-update sr.po-update sr@ijekavian.po-update sr@ijekavianlatin.po-update sr@latin.po-update sv.po-update tl.po-update tr.po-update uk.po-update vi.po-update zh_CN.po-update zh_TW.po-update
DUMMYPOFILES = af.nop ang.nop ang@latin.nop ar.nop bg.nop ca.nop ca_ES@valencia.nop cs.nop da.nop de.nop el.nop en_GB.nop en@shaw.nop es.nop eo.nop et.nop eu.nop fi.nop fr.nop fur_IT.nop ga.nop gl.nop he.nop hr.nop hu.nop id.nop is.nop it.nop ja.nop ko.nop la.nop lt.nop lv.nop mk.nop mr.nop nl.nop nb_NO.nop pl.nop pt.nop pt_BR.nop racv.nop ro.nop ru.nop sk.nop sl.nop sr.nop sr@ijekavian.nop sr@ijekavianlatin.nop sr@latin.nop sv.nop tl.nop tr.nop uk.nop vi.nop zh_CN.nop zh_TW.nop
DISTFILES.common = Makefile.in.in remove-potcdate.sin \
$(DISTFILES.common.extra1) $(DISTFILES.common.extra2) $(DISTFILES.common.extra3)
DISTFILES = $(DISTFILES.common) Makevars POTFILES.in $(DOMAIN).pot \
	$(POFILES) $(DISTFILES.extra1) $(DISTFILES.extra2) $(DISTFILES.extra3)

POTFILES = \

CATALOGS = af.gmo ang.gmo ang@latin.gmo ar.gmo bg.gmo ca.gmo ca_ES@valencia.gmo cs.gmo da.gmo de.gmo el.gmo en_GB.gmo en@shaw.gmo es.gmo eo.gmo et.gmo eu.gmo fi.gmo fr.gmo fur_IT.gmo ga.gmo gl.gmo he.gmo hr.gmo hu.gmo id.gmo is.gmo it.gmo ja.gmo ko.gmo la.gmo lt.gmo lv.gmo mk.gmo mr.gmo nl.gmo nb_NO.gmo pl.gmo pt.gmo pt_BR.gmo racv.gmo ro.gmo ru.gmo sk.gmo sl.gmo sr.gmo sr@ijekavian.gmo sr@ijekavianlatin.gmo sr@latin.gmo sv.gmo tl.gmo tr.gmo uk.gmo vi.gmo zh_CN.gmo zh_TW.gmo

# Makevars gets inserted here. (Don't remove this line!)
# Makefile variables for PO directory in any package using GNU gettext.

# Usually the message domain is the same as the package name.
DOMAIN = $(PACKAGE)
WMLXGETTEXT := wmlxgettext

# These two variables depend on the location of this directory.
subdir = po
top_builddir = ..

# This is the copyright holder that gets inserted into the header of the
# $(DOMAIN).pot file.  Set this to the copyright holder of the surrounding
# package.  (Note that the msgstr strings, extracted from the package's
# sources, belong to the copyright holder of the package.)  Translators are
# expected to transfer the copyright for their translations to this person
# or entity, or to disclaim their copyright.  The empty string stands for
# the public domain; in this case the translators are expected to disclaim
# their copyright.
COPYRIGHT_HOLDER = Wesnoth development team

# This is the email address or URL to which the translators shall report
# bugs in the untranslated strings:
# - Strings which are not entire sentences, see the maintainer guidelines
#   in the GNU gettext documentation, section 'Preparing Strings'.
# - Strings which use unclear terms or require additional context to be
#   understood.
# - Strings which make invalid assumptions about notation of date, time or
#   money.
# - Pluralisation problems.
# - Incorrect English spelling.
# - Incorrect formatting.
# It can be your email address, or a mailing list address where translators
# can write to without being subscribed, or the URL of a web page through
# which the translators can contact you.
MSGID_BUGS_ADDRESS =http://bugs.wesnoth.org/

.SUFFIXES:
.SUFFIXES: .po .gmo .mo .sed .sin .nop .po-create .po-update

all:
	@echo "Run make in the directory below instead"

.po.mo:
	@echo "$(MSGFMT) -c -o $@ $<"; \
	$(MSGFMT) -c -o t-$@ $< && mv t-$@ $@

.po.gmo:
	@lang=`echo $* | sed -e 's,.*/,,'`; \
	test "$(srcdir)" = . && cdcmd="" || cdcmd="cd $(srcdir) && "; \
	echo "$${cdcmd}rm -f $${lang}.gmo && $(GMSGFMT) -c --statistics -o $${lang}.gmo $${lang}.po"; \
	cd $(srcdir) && rm -f $${lang}.gmo && $(GMSGFMT) -c --statistics -o t-$${lang}.gmo $${lang}.po 2>&1 | tee $${lang}.stats && if test -e t-$${lang}.gmo; then mv t-$${lang}.gmo $${lang}.gmo; fi; \
	if grep '^0 translated' $${lang}.stats; then \
		rm $${lang}.gmo; \
	fi; \
	rm -f $${lang}.stats

.sin.sed:
	sed -e '/^#/d' $< > t-$@
	mv t-$@ $@

# This target rebuilds $(DOMAIN).pot; it is an expensive operation.
# Note that $(DOMAIN).pot is not touched if it doesn't need to be changed.
$(DOMAIN).pot-update: $(POTFILES) $(srcdir)/POTFILES.in remove-potcdate.sed
	$(XGETTEXT) --default-domain=$(DOMAIN) --directory=$(top_srcdir) \
	  --add-comments=TRANSLATORS: $(XGETTEXT_OPTIONS) \
	  --files-from=$(srcdir)/POTFILES.in \
	  --copyright-holder='$(COPYRIGHT_HOLDER)' \
	  --msgid-bugs-address='$(MSGID_BUGS_ADDRESS)' \
	  --keyword=_ --keyword=N_ \
	  --output=$(DOMAIN).cpp.po
	if test -f $(DOMAIN).cpp.po ; then \
	  sed s/charset=CHARSET/charset=UTF-8/ $(DOMAIN).cpp.po > $(DOMAIN).cpp1.po ;\
	fi
	if test -r $(srcdir)/FINDCFG ;\
	then ${WMLXGETTEXT} --directory=$(top_srcdir) --domain=$(DOMAIN) \
	  `cd $(top_srcdir) && sh $(subdir)/FINDCFG` > $(DOMAIN).wml.po ;\
	fi
	if test -f $(DOMAIN).wml.po -a -f $(DOMAIN).cpp1.po ; then \
	  msgcat --sort-by-file $(DOMAIN).cpp1.po $(DOMAIN).wml.po -o $(DOMAIN).po ;\
	elif test -f $(DOMAIN).wml.po ; then \
	  mv $(DOMAIN).wml.po $(DOMAIN).po ;\
	else \
	  mv $(DOMAIN).cpp1.po $(DOMAIN).po ;\
	fi
	rm -f $(DOMAIN).cpp.po $(DOMAIN).cpp1.po $(DOMAIN).wml.po
	test ! -f $(DOMAIN).po || { \
	  if test -f $(srcdir)/$(DOMAIN).pot; then \
	    sed -f remove-potcdate.sed < $(srcdir)/$(DOMAIN).pot > $(DOMAIN).1po && \
	    sed -f remove-potcdate.sed < $(DOMAIN).po > $(DOMAIN).2po && \
	    if cmp $(DOMAIN).1po $(DOMAIN).2po >/dev/null 2>&1; then \
	      rm -f $(DOMAIN).1po $(DOMAIN).2po $(DOMAIN).po; \
	    else \
	      rm -f $(DOMAIN).1po $(DOMAIN).2po $(srcdir)/$(DOMAIN).pot && \
	      mv $(DOMAIN).po $(srcdir)/$(DOMAIN).pot; \
	    fi; \
	  else \
	    mv $(DOMAIN).po $(srcdir)/$(DOMAIN).pot; \
	  fi; \
	}

# This rule has no dependencies: we don't need to update $(DOMAIN).pot at
# every "make" invocation, only create it when it is missing.
# Only "make $(DOMAIN).pot-update" or "make dist" will force an update.
$(srcdir)/$(DOMAIN).pot:
	$(MAKE) $(DOMAIN).pot-update

# This target rebuilds a PO file if $(DOMAIN).pot has changed.
# Note that a PO file is not touched if it doesn't need to be changed.
$(POFILES): $(srcdir)/$(DOMAIN).pot
	@lang=`echo $@ | sed -e 's,.*/,,' -e 's/\.po$$//'`; \
	if test -f "$(srcdir)/$${lang}.po"; then \
	  test "$(srcdir)" = . && cdcmd="" || cdcmd="cd $(srcdir) && "; \
	  echo "$${cdcmd}$(MSGMERGE_UPDATE) $${lang}.po $(DOMAIN).pot"; \
	  cd $(srcdir) && $(MSGMERGE_UPDATE) $${lang}.po $(DOMAIN).pot; \
	else \
	  $(MAKE) $${lang}.po-create; \
	fi

info dvi ps pdf html tags TAGS ctags CTAGS ID:

mostlyclean:
	rm -f remove-potcdate.sed
	rm -f core core.* $(DOMAIN).po $(DOMAIN).1po $(DOMAIN).2po *.new.po
	rm -fr *.o
	rm -f *.gmo
	rm -f *.po~
	rm -f *.wml.po *.cpp.po *.cpp1.po

clean: mostlyclean

distclean: clean
	rm -f Makefile Makefile.in POTFILES *.mo

update-po:
	$(MAKE) $(DOMAIN).pot-update
	test -z "$(UPDATEPOFILES)" || $(MAKE) $(UPDATEPOFILES)
	$(MAKE) update-gmo

# General rule for creating PO files.

.nop.po-create:
	@lang=`echo $@ | sed -e 's/\.po-create$$//'`; \
	$(MSGINIT) --no-translator -l $$lang -o $$lang.po

# General rule for updating PO files.

.nop.po-update:
	@lang=`echo $@ | sed -e 's/\.po-update$$//'`; \
	if test "$(PACKAGE)" = "gettext-tools"; then PATH=`pwd`/../src:$$PATH; fi; \
	tmpdir=`pwd`; \
	echo "$$lang:"; \
	test "$(srcdir)" = . && cdcmd="" || cdcmd="cd $(srcdir) && "; \
	echo "$${cdcmd}$(MSGMERGE) $$lang.po $(DOMAIN).pot -o $$lang.new.po"; \
	cd $(srcdir); \
	if $(MSGMERGE) $$lang.po $(DOMAIN).pot -o $$tmpdir/$$lang.new.po 2>&1; then \
	  if cmp $$lang.po $$tmpdir/$$lang.new.po >/dev/null 2>&1; then \
	    rm -f $$tmpdir/$$lang.new.po; \
	  else \
	    if mv -f $$tmpdir/$$lang.new.po $$lang.po; then \
	      :; \
	    else \
	      echo "msgmerge for $$lang.po failed: cannot move $$tmpdir/$$lang.new.po to $$lang.po" 1>&2; \
	      exit 1; \
	    fi; \
	  fi; \
	else \
	  echo "msgmerge for $$lang.po failed!" 1>&2; \
	  rm -f $$tmpdir/$$lang.new.po; \
	fi

$(DUMMYPOFILES):

update-gmo: $(GMOFILES)
	@:

force:

# Tell versions [3.59,3.63) of GNU make not to export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
