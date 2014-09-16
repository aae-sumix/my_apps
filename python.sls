# это состояние просто проконтролирует, что пакеты python и python-virtualenv
# установлены, а если нет -- то поставит их с зависимостями
python:
  pkg:
    - installed
    - names:
      - python
      - python-virtualenv
