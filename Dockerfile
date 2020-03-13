FROM nohitme/hugo-firebase:0.49.2

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]