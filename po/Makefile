
CAMPAIGN = Era_of_Myths
PACKAGE = wesnoth-Era_of_Myths
BRANCH = 1.10

SHELL = /bin/sh

srcdir = .
top_srcdir = ..

MSGFMT = msgfmt
WMLXGETTEXT := $(top_srcdir)/utils/wmlxgettext
MSGMERGE = msgmerge
MSGMERGE_UPDATE = msgmerge --update

POFILES = af.po ang.po ang@latin.po ar.po bg.po ca.po ca_ES@valencia.po cs.po da.po de.po el.po en_GB.po en@shaw.po es.po eo.po et.po eu.po fi.po fr.po fur_IT.po ga.po gl.po he.po hr.po hu.po id.po is.po it.po ja.po ko.po la.po lt.po lv.po mk.po mr.po nl.po nb_NO.po pl.po pt.po pt_BR.po racv.po ro.po ru.po sk.po sl.po sr.po sr@ijekavian.po sr@ijekavianlatin.po sr@latin.po sv.po tl.po tr.po uk.po vi.po zh_CN.po zh_TW.po
GMOFILES = af.gmo ang.gmo ang@latin.gmo ar.gmo bg.gmo ca.gmo ca_ES@valencia.gmo cs.gmo da.gmo de.gmo el.gmo en_GB.gmo en@shaw.gmo es.gmo eo.gmo et.gmo eu.gmo fi.gmo fr.gmo fur_IT.gmo ga.gmo gl.gmo he.gmo hr.gmo hu.gmo id.gmo is.gmo it.gmo ja.gmo ko.gmo la.gmo lt.gmo lv.gmo mk.gmo mr.gmo nl.gmo nb_NO.gmo pl.gmo pt.gmo pt_BR.gmo racv.gmo ro.gmo ru.gmo sk.gmo sl.gmo sr.gmo sr@ijekavian.gmo sr@ijekavianlatin.gmo sr@latin.gmo sv.gmo tl.gmo tr.gmo uk.gmo vi.gmo zh_CN.gmo zh_TW.gmo
UPDATEPOFILES = af.po-update ang.po-update ang@latin.po-update ar.po-update bg.po-update ca.po-update ca_ES@valencia.po-update cs.po-update da.po-update de.po-update el.po-update en_GB.po-update en@shaw.po-update es.po-update eo.po-update et.po-update eu.po-update fi.po-update fr.po-update fur_IT.po-update ga.po-update gl.po-update he.po-update hr.po-update hu.po-update id.po-update is.po-update it.po-update ja.po-update ko.po-update la.po-update lt.po-update lv.po-update mk.po-update mr.po-update nl.po-update nb_NO.po-update pl.po-update pt.po-update pt_BR.po-update racv.po-update ro.po-update ru.po-update sk.po-update sl.po-update sr.po-update sr@ijekavian.po-update sr@ijekavianlatin.po-update sr@latin.po-update sv.po-update tl.po-update tr.po-update uk.po-update vi.po-update zh_CN.po-update zh_TW.po-update
DUMMYPOFILES = af.nop ang.nop ang@latin.nop ar.nop bg.nop ca.nop ca_ES@valencia.nop cs.nop da.nop de.nop el.nop en_GB.nop en@shaw.nop es.nop eo.nop et.nop eu.nop fi.nop fr.nop fur_IT.nop ga.nop gl.nop he.nop hr.nop hu.nop id.nop is.nop it.nop ja.nop ko.nop la.nop lt.nop lv.nop mk.nop mr.nop nl.nop nb_NO.nop pl.nop pt.nop pt_BR.nop racv.nop ro.nop ru.nop sk.nop sl.nop sr.nop sr@ijekavian.nop sr@ijekavianlatin.nop sr@latin.nop sv.nop tl.nop tr.nop uk.nop vi.nop zh_CN.nop zh_TW.nop

CATALOGS = af.gmo ang.gmo ang@latin.gmo ar.gmo bg.gmo ca.gmo ca_ES@valencia.gmo cs.gmo da.gmo de.gmo el.gmo en_GB.gmo en@shaw.gmo es.gmo eo.gmo et.gmo eu.gmo fi.gmo fr.gmo fur_IT.gmo ga.gmo gl.gmo he.gmo hr.gmo hu.gmo id.gmo is.gmo it.gmo ja.gmo ko.gmo la.gmo lt.gmo lv.gmo mk.gmo mr.gmo nl.gmo nb_NO.gmo pl.gmo pt.gmo pt_BR.gmo racv.gmo ro.gmo ru.gmo sk.gmo sl.gmo sr.gmo sr@ijekavian.gmo sr@ijekavianlatin.gmo sr@latin.gmo sv.gmo tl.gmo tr.gmo uk.gmo vi.gmo zh_CN.gmo zh_TW.gmo


DOMAIN = $(PACKAGE)
WMLXGETTEXT := wmlxgettext

subdir = po

COPYRIGHT_HOLDER =

MSGID_BUGS_ADDRESS =

.SUFFIXES: .po .gmo .mo .sed .sin .nop .po-update

all:
	@echo "Run make in the directory below instead"

.po.mo:
	@echo "$(MSGFMT) -c -o $@ $<"; \
	$(MSGFMT) -c -o t-$@ $< && mv t-$@ $@

.po.gmo:
	@lang=`echo $* | sed -e 's,.*/,,'`; \
	test "$(srcdir)" = . && cdcmd="" || cdcmd="cd $(srcdir) && "; \
	echo "$${cdcmd}rm -f $${lang}.gmo && $(MSGFMT) -c --statistics -o $${lang}.gmo $${lang}.po"; \
	cd $(srcdir) && rm -f $${lang}.gmo && $(MSGFMT) -c --statistics -o t-$${lang}.gmo $${lang}.po 2>&1 | tee $${lang}.stats && if test -e t-$${lang}.gmo; then mv t-$${lang}.gmo $${lang}.gmo; fi; \
	if grep '^0 translated' $${lang}.stats; then \
		rm $${lang}.gmo; \
	fi; \
	rm -f $${lang}.stats

.sin.sed:
	sed -e '/^#/d' $< > t-$@
	mv t-$@ $@

$(DOMAIN).pot-update: $(srcdir)/remove-potcdate.sed
	if test -r $(srcdir)/FINDCFG ;\
	then ${WMLXGETTEXT} --directory=$(top_srcdir) --domain=$(DOMAIN) \
	  `cd $(top_srcdir) && sh $(subdir)/FINDCFG` > $(DOMAIN).wml.po ;\
	fi
	if test -f $(DOMAIN).wml.po ; then \
	  mv $(DOMAIN).wml.po $(DOMAIN).po ;\
	fi
	rm -f $(DOMAIN).wml.po
	sed -i 's/PACKAGE VERSION/$(CAMPAIGN)-$(BRANCH)/g' $(DOMAIN).po;
	sed -i 's/http:\/\/bugs.wesnoth.org\//$(MSGID_BUGS_ADDRESS)/g' $(DOMAIN).po;
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

$(srcdir)/$(DOMAIN).pot:
	$(MAKE) $(DOMAIN).pot-update

$(POFILES): $(srcdir)/$(DOMAIN).pot
	@lang=`echo $@ | sed -e 's,.*/,,' -e 's/\.po$$//'`; \
	if test -f "$(srcdir)/$${lang}.po"; then \
	  test "$(srcdir)" = . && cdcmd="" || cdcmd="cd $(srcdir) && "; \
	  echo "$${cdcmd}$(MSGMERGE_UPDATE) $${lang}.po $(DOMAIN).pot"; \
	  cd $(srcdir) && $(MSGMERGE_UPDATE) $${lang}.po $(DOMAIN).pot; \
	else \
	  echo "$${lang}.po is missing. You should probably update the build system"; \
	fi

info dvi ps pdf html tags TAGS ctags CTAGS ID:

mostlyclean:
	rm -f remove-potcdate.sed
	rm -f core core.* $(DOMAIN).po $(DOMAIN).1po $(DOMAIN).2po *.new.po
	rm -f *.gmo
	rm -f *.po~
	rm -f *.wml.po

clean: mostlyclean

distclean: clean
	rm -f Makefile *.mo

update-po:
	$(MAKE) $(DOMAIN).pot-update
	test -z "$(UPDATEPOFILES)" || $(MAKE) $(UPDATEPOFILES)
	$(MAKE) update-gmo


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

.NOEXPORT:
