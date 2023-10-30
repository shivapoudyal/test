{
    "serverAddress": "sms-dbpm-east.cozzd3aa9joi.us-east-1.rds.amazonaws.com:3306",
    "serverVersion": "5.7.38-log - Source distribution",
    "targetVersion": "8.0.27",
    "errorCount": 0,
    "warningCount": 1389,
    "noticeCount": 4,
    "summary": "No fatal errors were found that would prevent an upgrade, but some potential issues were detected. Please ensure that the reported issues are not significant before upgrading.",
    "checksPerformed": [
        {
            "id": "oldTemporalCheck",
            "title": "Usage of old temporal type",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "routinesSyntaxCheck",
            "title": "MySQL 8.0 syntax check for routine-like objects",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "reservedKeywordsCheck",
            "title": "Usage of db objects with names conflicting with new reserved keywords",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "utf8mb3Check",
            "title": "Usage of utf8mb3 charset",
            "status": "OK",
            "description": "Warning: The following objects use the utf8mb3 character set. It is recommended to convert them to use utf8mb4 instead, for improved Unicode support.",
            "documentationLink": "https://dev.mysql.com/doc/refman/8.0/en/charset-unicode-utf8mb3.html",
            "detectedProblems": [
                {
                    "level": "Warning",
                    "dbObject": "mysql",
                    "description": "schema's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_08_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_09_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_10_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_11_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2017_12_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_01_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_02_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_03_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_04_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_05_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_06_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_07_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_08_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_09_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_10_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_11_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2018_12_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_01_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_02_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_03_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_04_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_05_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_06_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_07_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_08_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_09_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_10_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_11_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2019_12_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_01_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_02_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_03_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_04_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_05_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_06_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_07_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_08_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_09_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_10_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_11_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2020_12_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_17.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_18.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_19.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_20.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_21.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_22.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_23.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_24.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_25.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_26.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_27.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_28.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_29.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_30.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_01_31.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_01.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_02.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_03.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_04.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_05.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_06.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_07.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_08.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_09.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_10.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_11.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_12.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_13.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_14.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_15.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.advanced_shipping_decision_log_2021_02_16.vw_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.ingram_confirmation_log.request_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.ingram_confirmation_log.request_message",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.ingram_confirmation_log.response_message",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.inventory_sourcing_event.reference_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.inventory_sourcing_event.event_package",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.inventory_sourcing_event.status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.inventory_sourcing_event_errors.status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.inventory_sourcing_event_errors.error",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "log.inventory_sourcing_event_errors.event_package",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "marketplace.location.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "marketplace.location.line1",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "marketplace.location.line2",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "marketplace.location.city",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "marketplace.location.state",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "marketplace.location.zip",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "marketplace.location.country_code",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "marketplace.location.phone_number",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "marketplace.seller.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "marketplace.seller.seller_logo_url",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "marketplace.seller.mapped_marketplace_code",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "marketplace.seller_feedback.rated_by_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "marketplace.seller_feedback.buyer_comments",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "marketplace.seller_location_code.seller_location_code",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing._virtual_warehouse_new.book_condition",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.ingram_request_errors.internal_uuid",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.ingram_request_errors.error_details",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.ingram_request_queue.internal_uuid",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.ingram_request_queue.external_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.ingram_request_queue.request_status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.ingram_request_queue.request_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.ingram_request_queue.request_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.ingram_request_queue.lock_uuid",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.ingram_request_queue_supplement.request_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.ingram_request_queue_supplement.parent_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.ingram_request_queue_supplement.instance_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.ingram_request_queue_supplement.instance_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.ingram_request_queue_supplement.request_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.inventory_webhook_config.webhook_url",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.inventory_webhook_config.username",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.inventory_webhook_config.password",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.inventory_webhook_config.request_headers",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.marketplace_login.marketplace",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.marketplace_login.account_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.marketplace_login.username",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.marketplace_login.email",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.marketplace_login.password",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.partner_locations.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.partner_locations.city",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.partner_locations.state",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.partner_locations.zip",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.partner_user_map.chegg_mapped_user_number",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.partner_user_map.partner_reference_number",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.partner_user_map.preferred_email_address",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.partner_user_map.partner_email_address",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.partner_user_map.customer_status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.sourcing_credit_card.marketplace",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.sourcing_credit_card.first_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.sourcing_credit_card.last_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.sourcing_credit_card.address1",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.sourcing_credit_card.address2",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.sourcing_credit_card.city",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.sourcing_credit_card.state",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.sourcing_credit_card.zip",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.sourcing_credit_card.phone",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.sourcing_credit_card.card_number",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.sourcing_credit_card.cvv",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.sourcing_credit_card.exp_month",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.sourcing_credit_card.exp_year",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.sourcing_credit_card.halfid",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.ups_transit_times.origin_zip",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.ups_transit_times.dest_zip",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.vendor_po_settings.account_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.vendor_po_settings.order_category",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.vendor_po_settings.shipping_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.vendor_po_settings.ftp_host",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.vendor_po_settings.username",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.vendor_po_settings.password",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.vendor_po_settings.tmp_file_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.vendor_po_settings.file_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.vendor_po_settings.inventory_dir",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.vendor_po_settings.po_dir",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.vendor_po_settings.poa_dir",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.vendor_po_settings.asn_dir",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.vendor_po_settings.invoice_dir",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.virtual_warehouse.book_condition",
                    "description": "column's default character set: utf8"
                }
            ]
        },
        {
            "id": "mysqlSchemaCheck",
            "title": "Table names in the mysql schema conflicting with new tables in 8.0",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "nonNativePartitioningCheck",
            "title": "Partitioned tables using engines with non native partitioning",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "foreignKeyLengthCheck",
            "title": "Foreign key constraint names longer than 64 characters",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "maxdbFlagCheck",
            "title": "Usage of obsolete MAXDB sql_mode flag",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "sqlModeFlagCheck",
            "title": "Usage of obsolete sql_mode flags",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "enumSetElementLenghtCheck",
            "title": "ENUM/SET column definitions containing elements longer than 255 characters",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "partitionedTablesInSharedTablespaceCheck",
            "title": "Usage of partitioned tables in shared tablespaces",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "circularDirectoryCheck",
            "title": "Circular directory references in tablespace data file paths",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "removedFunctionsCheck",
            "title": "Usage of removed functions",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "groupByAscCheck",
            "title": "Usage of removed GROUP BY ASC/DESC syntax",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "removedSysLogVars",
            "title": "Removed system variables for error logging to the system log configuration",
            "status": "CONFIGURATION_ERROR",
            "description": "To run this check requires full path to MySQL server configuration file to be specified at 'configPath' key of options dictionary",
            "documentationLink": "https://dev.mysql.com/doc/relnotes/mysql/8.0/en/news-8-0-13.html#mysqld-8-0-13-logging"
        },
        {
            "id": "removedSysVars",
            "title": "Removed system variables",
            "status": "CONFIGURATION_ERROR",
            "description": "To run this check requires full path to MySQL server configuration file to be specified at 'configPath' key of options dictionary",
            "documentationLink": "https://dev.mysql.com/doc/refman/8.0/en/added-deprecated-removed.html#optvars-removed"
        },
        {
            "id": "sysVarsNewDefaults",
            "title": "System variables with new default values",
            "status": "CONFIGURATION_ERROR",
            "description": "To run this check requires full path to MySQL server configuration file to be specified at 'configPath' key of options dictionary",
            "documentationLink": "https://mysqlserverteam.com/new-defaults-in-mysql-8-0/"
        },
        {
            "id": "zeroDatesCheck",
            "title": "Zero Date, Datetime, and Timestamp values",
            "status": "OK",
            "description": "Warning: By default zero date/datetime/timestamp values are no longer allowed in MySQL, as of 5.7.8 NO_ZERO_IN_DATE and NO_ZERO_DATE are included in SQL_MODE by default. These modes should be used with strict mode as they will be merged with strict mode in a future release. If you do not include these modes in your SQL_MODE setting, you are able to insert date/datetime/timestamp values that contain zeros. It is strongly advised to replace zero values with valid ones, as they may not work correctly in the future.",
            "documentationLink": "https://lefred.be/content/mysql-8-0-and-wrong-dates/",
            "detectedProblems": [
                {
                    "level": "Warning",
                    "dbObject": "global.sql_mode",
                    "description": "does not contain either NO_ZERO_DATE or NO_ZERO_IN_DATE which allows insertion of zero dates"
                },
                {
                    "level": "Warning",
                    "dbObject": "session.sql_mode",
                    "description": " of 2 session(s) does not contain either NO_ZERO_DATE or NO_ZERO_IN_DATE which allows insertion of zero dates"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.chegg_rating_settings.date_end",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.half_orders.created_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.merchant_emails.received_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "sourcing.sourcing_update.created_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                }
            ]
        },
        {
            "id": "schemaInconsistencyCheck",
            "title": "Schema inconsistencies resulting from file removal or corruption",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "engineMixupCheck",
            "title": "Tables recognized by InnoDB that belong to a different engine",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "checkTableOutput",
            "title": "Issues reported by 'check table x for upgrade' command",
            "status": "OK",
            "detectedProblems": [
                {
                    "level": "Notice",
                    "dbObject": "orders.preorder_order_lines",
                    "description": "Trigger orders.preorder_order_lines.preorder_insert_order_line_log_trigger does not have CREATED attribute."
                },
                {
                    "level": "Notice",
                    "dbObject": "orders.preorder_order_lines",
                    "description": "Trigger orders.preorder_order_lines.preorder_order_line_history_trigger does not have CREATED attribute."
                },
                {
                    "level": "Notice",
                    "dbObject": "orders.preorder_order_lines",
                    "description": "Trigger orders.preorder_order_lines.preorder_update_order_line_log_trigger does not have CREATED attribute."
                },
                {
                    "level": "Notice",
                    "dbObject": "sourcing.vendors",
                    "description": "Trigger sourcing.vendors.t_update_amazon_merchants does not have CREATED attribute."
                }
            ]
        },
        {
            "id": "columnsWhichCannotHaveDefaultsCheck",
            "title": "Columns which cannot have default values",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "mysqlInvalid57NamesCheck",
            "title": "Check for invalid table names and schema names used in 5.7",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "mysqlOrphanedRoutinesCheck",
            "title": "Check for orphaned routines in 5.7",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "mysqlIndexTooLargeCheck",
            "title": "Check for indexes that are too large to work on higher versions of MySQL Server than 5.7",
            "status": "OK",
            "detectedProblems": []
        },
        {
            "id": "mysqlEmptyDotTableSyntaxCheck",
            "title": "Check for deprecated '.<table>' syntax used in routines.",
            "status": "OK",
            "detectedProblems": []
        }
    ],
    "manualChecks": [
        {
            "id": "defaultAuthenticationPlugin",
            "title": "New default authentication plugin considerations",
            "description": "Warning: The new default authentication plugin 'caching_sha2_password' offers more secure password hashing than previously used 'mysql_native_password' (and consequent improved client connection authentication). However, it also has compatibility implications that may affect existing MySQL installations.  If your MySQL installation must serve pre-8.0 clients and you encounter compatibility issues after upgrading, the simplest way to address those issues is to reconfigure the server to revert to the previous default authentication plugin (mysql_native_password). For example, use these lines in the server option file:\n\n[mysqld]\ndefault_authentication_plugin=mysql_native_password\n\nHowever, the setting should be viewed as temporary, not as a long term or permanent solution, because it causes new accounts created with the setting in effect to forego the improved authentication security.\nIf you are using replication please take time to understand how the authentication plugin changes may impact you.",
            "documentationLink": "https://dev.mysql.com/doc/refman/8.0/en/upgrading-from-previous-series.html#upgrade-caching-sha2-password-compatibility-issues\nhttps://dev.mysql.com/doc/refman/8.0/en/upgrading-from-previous-series.html#upgrade-caching-sha2-password-replication"
        }
    ]
}
