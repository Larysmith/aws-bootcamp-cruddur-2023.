-- this file was manually created (because we might auto generate it in future)
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('lary smith','las@gmail.com' , 'lary' ,'MOCK'),
  ('azeez yusuf','azy@yahoo.com' , 'azeez' ,'MOCK'),
  ('mirah yusuf','my@test.pro' , 'mirah' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'lary' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )
