------------------------------------------
------------------------------------------
-- Holiday type
------------------------------------------
------------------------------------------
--
DO $$ BEGIN
	CREATE TYPE holidays.holiday AS
	(
		datestamp DATE,
		description TEXT,
		authority holidays.jurisdictional_authority,
		day_off BOOLEAN,
		observation_shifted BOOLEAN
	);
EXCEPTION
	WHEN duplicate_object THEN null;
END $$;
