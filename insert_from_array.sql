DO $$
DECLARE
  companies text[]:= array['Accurate Armory LLC', 'Arctiier Armstech', 'Adcor Defense', 'Arsenal, Inc', 'Izhmekh',
						  'BPI Outdoors', 'Beretta'];
  company text;
BEGIN
  FOREACH company IN ARRAY companies LOOP
    INSERT INTO public.manufacturers(name)
	VALUES (company);
  END LOOP;
END$$;