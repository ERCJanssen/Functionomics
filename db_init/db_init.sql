-- Table: public.thunderset

CREATE DATABASE lsf;
GRANT ALL PRIVILEGES ON DATABASE lsf TO postgres;

\c lsf

CREATE TABLE public.lsf
(
    study_id character varying NOT NULL,
    n_levels_fused character varying,
    surgery_type character varying,
    surgery_date character varying,
    diagnosis_Cat character varying,
    postop_compl character varying,
    age character varying,
    sex character varying,
    asa character varying,
    bmi character varying,
    smoking character varying,
    pain_duration character varying,
    max_pain character varying,
    odi character varying,
    pcs character varying,
    hads_angst character varying,
    hads_depressie character varying,
    pcs1 character varying,
    mcs1 character varying,
    finger_floor_disctance character varying,
    motor_control character varying,
    sorensen character varying,
    medx_avr_diff_norm character varying,
    steep_wrpeak_kg character varying,
    discharge_date character varying,
    los character varying,
    milas_0 character varying,
    t1_max_pain character varying,
    one_year_follow_up character varying,
    CONSTRAINT id_pk PRIMARY KEY (study_id)
)
WITH (
      OIDS=FALSE
);
ALTER TABLE public.lsf
  OWNER TO postgres;