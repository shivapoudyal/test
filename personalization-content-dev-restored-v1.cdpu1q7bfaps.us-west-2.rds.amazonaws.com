{
    "serverAddress": "personalization-content-dev-restored-v1.cdpu1q7bfaps.us-west-2.rds.amazonaws.com:3306",
    "serverVersion": "5.7.42-log - Source distribution",
    "targetVersion": "8.0.27",
    "errorCount": 1,
    "warningCount": 97,
    "noticeCount": 0,
    "summary": "1 errors were found. Please correct these issues before upgrading to avoid compatibility issues.",
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
            "description": "The following objects did not pass a syntax check with the latest MySQL 8.0 grammar. A common reason is that they reference names that conflict with new reserved keywords. You must update these routine definitions and `quote` any such references before upgrading.",
            "documentationLink": "https://dev.mysql.com/doc/refman/en/keywords.html",
            "detectedProblems": [
                {
                    "level": "Error",
                    "dbObject": "mysql.flush_rewrite_rules",
                    "description": "at line 5,8: unexpected token 'QUERY'"
                }
            ]
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
                    "dbObject": "directus.directus_activity.action",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_activity.ip",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_activity.user_agent",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_activity.collection",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_activity.item",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_collection_presets.collection",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_collection_presets.search_query",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_collection_presets.filters",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_collection_presets.view_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_collection_presets.view_query",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_collection_presets.view_options",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_collection_presets.translation",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_collections.collection",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_collections.icon",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_collections.note",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_collections.translation",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_fields.collection",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_fields.field",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_fields.type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_fields.interface",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_fields.options",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_fields.validation",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_fields.width",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_fields.note",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_fields.translation",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_files.storage",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_files.private_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_files.filename_disk",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_files.filename_download",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_files.title",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_files.type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_files.charset",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_files.embed",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_files.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_files.location",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_files.tags",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_files.checksum",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_files.metadata",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_migrations.migration_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_permissions.collection",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_permissions.status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_permissions.create",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_permissions.read",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_permissions.update",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_permissions.delete",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_permissions.comment",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_permissions.explain",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_permissions.read_field_blacklist",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_permissions.write_field_blacklist",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_permissions.status_blacklist",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_relations.collection_many",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_relations.field_many",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_relations.collection_one",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_relations.field_one",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_relations.junction_field",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_revisions.collection",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_revisions.item",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_revisions.data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_revisions.delta",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_revisions.parent_collection",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_revisions.parent_item",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_roles.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_roles.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_roles.ip_whitelist",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_roles.external_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_roles.module_listing",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_roles.collection_listing",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_settings.key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_settings.value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_user_sessions.token_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_user_sessions.token",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_user_sessions.ip_address",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_user_sessions.user_agent",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.first_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.last_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.email",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.password",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.token",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.timezone",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.locale",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.locale_options",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.company",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.title",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.last_page",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.external_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.theme",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.2fa_secret",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_users.password_reset_token",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_webhooks.status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_webhooks.http_action",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_webhooks.url",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_webhooks.collection",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "directus.directus_webhooks.directus_action",
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
