mysql-server:
  pkg:
    - installed
  service:
    - running
    - reload: True  # сервис поддерживает reload
    - require:
      - pkg: mysql-server
