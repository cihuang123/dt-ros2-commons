FROM argnctu/dt-ros2-commons:rpi

# setup entrypoint
COPY ./entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]