.PHONY: all
all: lab6.html

lab6.html: lab6.Rmd data/ok_tor.rds data/fire_stations.rds data/school_districts.rds
	Rscript -e "library(rmarkdown); render('lab6.Rmd')"

data/ok_tor.rds: R/get_tornadoes.R
	Rscript $<

data/fire_stations.rds: R/get_fire_stations.R
	Rscript $<

data/school_districts.rds: R/get_school_districts.R
	Rscript $<

.PHONY: clean_html clean_data

clean_html:
	rm lab6.html

clean_data:
	cd data; rm *.rds
