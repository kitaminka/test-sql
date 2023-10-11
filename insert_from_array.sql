DO $$
DECLARE
  companies text[]:= array['Folik', 'Arctiier Armstech', 'Adcor Defense', 'Arsenal, Inc', 'Izhmekh',
						  'BPI Outdoors', 'Viuviu'];
  company text;
BEGIN
  FOREACH company IN ARRAY companies LOOP
    INSERT INTO public.manufacturers(name)
	VALUES (company);
  END LOOP;
END$$;