# это состояние поставит nginx и запустит его как сервис, при этом require 
# показывает, что состояние service нужно запустить после состояния pkg
nginx:
  pkg:
    - installed
  service:
    - running
    - reload: True  # сервис поддерживает reload
    - require:
      - pkg: nginx
