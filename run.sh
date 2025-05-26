#!/bin/sh
echo "開始測試"
pytest test_sample.py
--html=report.html
--self-contained-html

echo "FINISH!! 已產出報告"
