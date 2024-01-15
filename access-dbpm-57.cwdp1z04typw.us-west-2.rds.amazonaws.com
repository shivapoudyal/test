{
    "serverAddress": "access-dbpm-57.cwdp1z04typw.us-west-2.rds.amazonaws.com:3306",
    "serverVersion": "5.7.38-log - Source distribution",
    "targetVersion": "8.0.27",
    "errorCount": 0,
    "warningCount": 24,
    "noticeCount": 0,
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
                    "dbObject": "access.offer_redeem_impl.class_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.offer_redeemable_token.token",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.offer_redeemable_token.redeemed_by_user_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.offer_redeemable_token.redeemed_by_agent",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.user_access_annotation.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.user_access_annotation.value",
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
                    "description": " of 407 session(s) does not contain either NO_ZERO_DATE or NO_ZERO_IN_DATE which allows insertion of zero dates"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.asset_type.created_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.client.created_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.offer.start_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.offer.created_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.offer_asset_domain.start_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.offer_asset_domain.created_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.offer_redeem_impl.created_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.offer_redeemable_token.created_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.offer_term.created_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.user_accessible_offer.start_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.user_accessible_offer.grant_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.user_accessible_offer.created_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.user_asset_domain.start_date",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "access.user_asset_domain.created_date",
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
            "detectedProblems": []
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
        },
        {
            "id": "mysqlInvalidEngineForeignKeyCheck",
            "title": "Check for columns that have foreign keys pointing to tables from a diffrent database engine.",
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
