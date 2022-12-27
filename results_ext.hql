SET hivevar:clusterUsername=burah.demeure.meunier-ece;
SET hivevar:hiveUsername=burah_demeure_meunier_ece;

CREATE EXTERNAL TABLE ece_2022_fall_bda_1.${hiveUsername}_results_ext (
  date date,
  home_team string,
  away_team string,
  home_score int,
  away_score int,
  tournament string,
  city string,
  country string,
  neutral boolean
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/education/ece_2022_fall_bda_1/${clusterUsername}/BigDataEcoSystem_project_Burah_Demeure_Meunier'
TBLPROPERTIES ('skip.header.line.count'='1');