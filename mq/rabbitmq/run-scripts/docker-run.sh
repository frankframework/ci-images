#!/bin/bash

rabbitmq-plugins enable rabbitmq_jms_topic_exchange

rabbitmq-server $@
