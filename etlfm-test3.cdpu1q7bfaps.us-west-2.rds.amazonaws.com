{
    "serverAddress": "etlfm-test3.cdpu1q7bfaps.us-west-2.rds.amazonaws.com:3306",
    "serverVersion": "5.7.42-log - Source distribution",
    "targetVersion": "8.0.27",
    "errorCount": 5,
    "warningCount": 676,
    "noticeCount": 0,
    "summary": "5 errors were found. Please correct these issues before upgrading to avoid compatibility issues.",
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
            "description": "Warning: The following objects have names that conflict with new reserved keywords. Ensure queries sent by your applications use `quotes` when referring to them or they will result in errors.",
            "documentationLink": "https://dev.mysql.com/doc/refman/en/keywords.html",
            "detectedProblems": [
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_object_compact.system",
                    "description": "Column name"
                }
            ]
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
                    "dbObject": "cramster",
                    "description": "schema's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo",
                    "description": "schema's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "mysql",
                    "description": "schema's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_cas.service",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_cas.ticket",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_cas.renew",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_event.client_ip",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_event.origin",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_event.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_group.role",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_group.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_permission.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_permission.table_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_user.first_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_user.last_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_user.email",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_user.password",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_user.registration_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_user.reset_password_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_user.registration_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.auth_user.username",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.plugin_web2admin_history.w2a_action",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.plugin_web2admin_history.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_run.status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_run.output",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_run.result",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_run.traceback",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_run.worker_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_run.run_output",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_run.run_result",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_task.application_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_task.task_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_task.group_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_task.status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_task.function_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_task.uuid",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_task.args",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_task.vars",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_task.enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_task.assigned_worker_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_worker.worker_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_worker.status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_worker.is_ticker",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.scheduler_worker.group_names",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_cheggbi_failure_mapping.f_cheggbi_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_cheggbi_failure_mapping.f_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_cheggbi_keys.f_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_cheggbi_keys.f_created_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_cheggbi_keys.f_modified_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_query_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_metadata",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_scheduler_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_start_date",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_end_date",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_src_dbhost1",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_src_query_1",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_dest_dbhost",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_dest_query",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_log_jira",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_jira_recipient",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_jira_amount_column",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_run_testp",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_last_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_run_test",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_promote_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_run_dev",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_modified_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multi_host.f_created_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_query_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_metadata",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_scheduler_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_start_date",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_end_date",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_dest_query",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_log_jira",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_jira_recipient",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_jira_amount_column",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_promote_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_last_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_created_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_modified_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_parent_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_pagerduty",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_jira_label",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_src_dbhost_2",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_src_dbhost_1",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_src_query_1",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_src_query_2",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_src_query_3",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_src_query_4",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_src_query_6",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_src_query_5",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_src_dbhost_6",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_src_dbhost_3",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_src_dbhost_5",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost.f_src_dbhost_4",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_query_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_metadata",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_scheduler_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_start_date",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_end_date",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_dest_query",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_log_jira",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_jira_recipient",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_jira_amount_column",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_last_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_created_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_parent_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_pagerduty",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_jira_label",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_src_dbhost_2",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_src_dbhost_1",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_src_query_1",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_src_query_2",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_src_query_3",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_src_query_4",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_src_query_6",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_src_query_5",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_src_dbhost_6",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_src_dbhost_3",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_src_dbhost_5",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_prod.f_src_dbhost_4",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_promoted.f_promote_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_promoted.f_approved",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_promoted.f_promote",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_multihost_promoted.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_promoted.f_approved",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_promoted.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_promoted.f_promote",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_promoted.f_promote_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_query_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_metadata",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_dir_scheduler",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_metrics_scheduler",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_metrics_string",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_metrics_columns",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_log_jira",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_dbhost",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_query",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_alert_ops",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_run_dev",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_run_test",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_run_testp",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_last_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_created_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_modified_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_promote_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_jira_amount_column",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_jira_recipient",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query.f_parent_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_query_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_metadata",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_dir_scheduler",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_metrics_scheduler",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_metrics_string",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_metrics_columns",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_log_jira",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_dbhost",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_query",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_alert_ops",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_last_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_promote_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_created_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_jira_amount_column",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_prod.f_jira_recipient",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_query_runs.f_env",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_rerun_failures.f_status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_rerun_failures.f_email",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_art_rerun_failures.f_rows_returned",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_promoted.f_promote_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_promoted.f_approved",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_promoted.f_promote",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_promoted.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query.f_query_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query.f_metadata",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query.f_dbhost",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query.f_query",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query.f_parent_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query.f_last_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query.f_modified_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query.f_enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query.f_promote_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query_prod.f_query_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query_prod.f_metadata",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query_prod.f_dbhost",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query_prod.f_query",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query_prod.f_promote_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query_prod.f_parent_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query_prod.f_last_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query_prod.f_enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_frat_query_prod.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_promoted.f_run_prod",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_promoted.f_modified_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_promoted.f_created_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_query_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_metadata",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_metrics_scheduler",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_metrics_string",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_dir_scheduler",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_dbhost",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_query",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_run_dev",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_run_test",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_parent_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_last_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_created_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_modified_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_use_jira",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_log_jira",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_metrics_columns",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_alert_ops",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_run_testp",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_jira_amount_column",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_jira_recipient",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_jira_label",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_jira_priority",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries.f_startdate_is_yesterday",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_query_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_metadata",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_metrics_scheduler",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_metrics_string",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_dir_scheduler",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_dbhost",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_query",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_run_dev",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_run_test",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_run_testp",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_parent_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_last_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_created_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_modified_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_use_jira",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_queries_archive.f_log_jira",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_query_runs.f_env",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_promoted.f_promote_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_promoted.f_approved",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_promoted.f_promote",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_promoted.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_query.f_query_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_query.f_metadata",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_query.f_dbhost",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_query.f_query",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_query.f_promote_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_query.f_modified_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_query.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_query_prod.f_query_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_query_prod.f_metadata",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_query_prod.f_dbhost",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_query_prod.f_query",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_query_prod.f_promote_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_query_prod.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_rap_query_prod.f_enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_sched_rap_query.f_query_variables",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_sched_rap_query.f_notify_email",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_sched_rap_query.f_csv_filename",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_sched_rap_query.f_run_dev",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_sched_rap_query.f_run_test",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_sched_rap_query.f_run_prod",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_sched_rap_query.f_enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_sched_rap_query.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_sched_rap_query.f_query_end",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_sched_rap_query.f_query_start",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_sched_rap_query.f_schedule_period",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_frat_query.f_recurring",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_frat_query.f_schedule_frequency",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_frat_query.f_query_variables",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_frat_query.f_enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_frat_query.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_frat_query.f_run_dev",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_frat_query.f_run_testp",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_frat_query.f_run_test",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_frat_query.f_run_prod",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_frat_query.f_notify_email",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_rap_query.f_recurring",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_rap_query.f_query_variables",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_rap_query.f_run_dev",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_rap_query.f_run_test",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_rap_query.f_run_testp",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_rap_query.f_run_prod",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_rap_query.f_enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_rap_query.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_rap_query.f_schedule_period",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_rap_query.f_notify_email",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_schedule_rap_query.f_csv_filename",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_test_consistency.f_status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "art2.t_testp_consistency.f_status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_cas.service",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_cas.ticket",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_cas.renew",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_event.client_ip",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_event.origin",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_event.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_group.role",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_group.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_permission.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_permission.table_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_user.first_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_user.last_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_user.email",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_user.username",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_user.password",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_user.registration_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_user.reset_password_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.auth_user.registration_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_run.status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_run.run_output",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_run.run_result",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_run.traceback",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_run.worker_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_task.application_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_task.task_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_task.group_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_task.status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_task.function_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_task.uuid",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_task.args",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_task.vars",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_task.enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_task.assigned_worker_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_worker.worker_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_worker.status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_worker.is_ticker",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.scheduler_worker.group_names",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_chegg_services.f_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_chegg_services.f_host",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_chegg_services.f_environment",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_chegg_services.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_chegg_services.f_elb",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_download_access_log_status.f_jmeter_host",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_download_access_log_status.f_load_environment",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_download_access_log_status.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_jmeter_load_status.f_load_environment",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_jmeter_load_status.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_jmeter_load_status.f_jmeter_host",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_jmeter_server.f_server_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_jmeter_server.f_environment",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_jmeter_server.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_jmeter_testplan.f_testplan_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_jmeter_testplan.f_metadata",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_jmeter_testplan.f_schedule",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_jmeter_testplan.f_notify_email",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_jmeter_testplan.f_testplan_file",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_jmeter_testplan.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_jmeter_testplan.f_access_log_url",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_jmeter_testplan.f_repository_url",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_services.f_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_services.f_host",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_services.f_environment",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "atlas.t_services.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.karma_transaction.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.karma_transaction_type.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.email",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.first_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.last_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.password",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.zip",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.hear_other",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.landing_page",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.comment",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.pic",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.pic_small",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.pic_big",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.marketing_tag",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.facebook_pic_url",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.referral_code",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.ad_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "cramster.student.how_cramster",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.email",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.first_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.last_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.password",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.zip",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.hear_other",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.landing_page",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.comment",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.pic",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.pic_small",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.pic_big",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.marketing_tag",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.facebook_pic_url",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.referral_code",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.ad_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dbo.student_test4.how_cramster",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_cas.service",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_cas.renew",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_cas.ticket",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_event.client_ip",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_event.origin",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_event.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_group.role",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_group.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_permission.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_permission.table_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_user.first_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_user.last_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_user.email",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_user.password",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_user.registration_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_user.reset_password_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.auth_user.registration_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.configs.title",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.configs.config",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.configs.value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.logins.host_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.logins.my_db",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.logins.host_path",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.logins.username",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.logins.password",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.multi_queries.ordered_ids",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.multi_queries.enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.queries.my_db",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.queries.title",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.queries.query",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.queries.modified_by",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.queries.enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.queries.info_needed",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "dir.queries.bugs",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.#Tableau_0_sid_00EA23C1_4_Filter.interval_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.#Tableau_0_sid_00EA23C1_4_Filter.object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.access_role.access_role_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.alert_log.rule",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.alert_log.alert_recipient",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_node_instance.status_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_node_instance.interval_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_object.object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_object.object_schema",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_object.object_system",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_object.object_type_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_object.lock_level_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_object_compact.system",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_object_compact.schema",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_object_compact.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_object_edge.pred_object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_object_edge.pred_object_schema",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_object_edge.pred_object_system",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_object_edge.suc_object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_object_edge.suc_object_schema",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_object_edge.suc_object_system",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.edge_log.action_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.employee.Id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.employee.EmpName",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.employee.Department",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.employee.StartDate",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.employee.Salary",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.employee_sample.empname",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.employee_sample.department",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.employee_sample.startdate",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.instance_execution.etl_log_channel_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.instance_execution.hostname",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.instance_execution.executed_command",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.instance_execution_bkp.etl_log_channel_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.instance_execution_bkp.hostname",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.instance_execution_bkp.executed_command",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.instance_execution_bkp_mar2018.etl_log_channel_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.instance_execution_bkp_mar2018.hostname",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.instance_execution_bkp_mar2018.executed_command",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.interval_map.interval_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.interval_map_bkp20230102.interval_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.interval_map_bkp20230102_TEST2.interval_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.interval_type.interval_type_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.interval_type.format_string_general",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.interval_type.format_string_mysql",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.interval_type.format_string_aster",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.interval_type.format_string_hive",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.interval_type.format_string_java",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.interval_type.format_string_unix",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.interval_type.format_string_ruby",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lock_level.lock_level_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_data_object.object_system",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_data_object.object_schema",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_data_object.object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_data_object.object_type_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_data_object.data_object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_data_object.data_object_full_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_node.process_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_node.node_group_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_node.interval_type_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_node.object_system",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_node.object_schema",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_node.object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_node.object_type_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_node.data_object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_node.data_object_full_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_node.node_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.lov_node.node_full_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node.etl_spec_file_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_bkp_20160325.etl_spec_file_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_bkp_DE_3902.etl_spec_file_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_bkp_ns_migration.etl_spec_file_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_compact.object_system",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_compact.object_schema",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_compact.object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_compact.process_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_compact.node_group",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_compact.etl_spec",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_compact.interval_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_compact.last_successful_interval",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_compact.last_failed_interval",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_compact.running_interval",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_de_3949.etl_spec_file_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_group.node_group_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_group.alert_recipients",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_notification.email_recepient",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_notification.email_subject",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_notification.email_summary",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_notification.email_body",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_override.start_time_override",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.note.note_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.note.note_content",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.object.object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.object.object_schema",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.object.object_system",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.object_bkp_20160603.object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.object_bkp_20160603.object_schema",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.object_bkp_20160603.object_system",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.object_bkp_ns_migration.object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.object_bkp_ns_migration.object_schema",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.object_bkp_ns_migration.object_system",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.object_type.object_type_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_detail.parameter_type_code",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_detail.parameter_type_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_detail.parameter_level_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_detail.related_table_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_detail.related_column_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_detail.parameter_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_detail.parameter_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_level.parameter_level_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_level.related_table_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_level.related_column_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_type.parameter_type_code",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_type.parameter_type_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_value.parameter_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_value.parameter_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_value_bkp_ns_migration.parameter_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.parameter_value_bkp_ns_migration.parameter_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.process.process_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.process.process_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.process.process_code",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.process.process_executable",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.process_parameter_requirement.parameter_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.pv_ns_id.object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.pv_ns_id.object_schema",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.pv_ns_id.object_system",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.pv_ns_id.parameter_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.pv_ns_id.parameter_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.pv_ns_id2.node_group_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.pv_ns_id2.object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.pv_ns_id2.object_schema",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.pv_ns_id2.object_system",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.pv_ns_id2.parameter_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.pv_ns_id2.parameter_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.redshift_node.node_group_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.redshift_node.object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.redshift_node.process_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.redshift_node.process_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.redshift_node.interval_type_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.server.hostname",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.server.server_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.server.environment",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.sla_report.object_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.sla_report.sla_status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.status.status_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.status_decision.dependency_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.temp_interval_map.interval_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.test_node.etl_spec_file_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.user.email_address",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.user_access_role_detail.user_email_address",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.user_access_role_detail.access_role_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_cas.renew",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_cas.service",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_cas.ticket",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_event.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_event.origin",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_event.client_ip",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_group.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_group.role",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_permission.table_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_permission.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_user.first_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_user.last_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_user.username",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_user.registration_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_user.reset_password_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_user.password",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_user.registration_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.auth_user.email",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_commit_block.f_blocked",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_commit_block.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_commit_block.f_test_env",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_commit_block.f_branch",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_commit_block.f_repo_version",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_test_case_runs.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_test_case_runs.f_run_status",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_test_case_runs.f_test_env",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_test_case_runs.f_testcase_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_test_cases.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_test_cases.f_scenario_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_test_cases.f_testcase_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_test_cases.f_test_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_test_features.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_test_features.f_file_path",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_test_features.f_feature_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_test_features.f_feature_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_test_features.f_file_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_test_features.f_feature_group",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_testcase_jira_tickets.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_testcase_jira_tickets.f_jira_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "greco.t_testcase_jira_tickets.f_testcase_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.checks.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.checks.target",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.checks.sample",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.checks.baseline",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.checks.enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.checks.type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.checks.regression_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.checks_backup.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.checks_backup.target",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.checks_backup.sample",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.checks_backup.baseline",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.checks_backup.enabled",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.checks_backup.type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.checks_backup.regression_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.dashboards.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.dashboards.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.dashboards.background_color",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.graphs.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.graphs.area",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.graphs.vtitle",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.graphs.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.graphs.unit",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.graphs.custom_opts",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.lines.color",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.lines.target",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.lines.alias",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.settings.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.settings.friendly_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.settings.value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.settings.value_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.settings.plugin",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.settings.type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.subscriptions.method",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.users.username",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.users.email",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.users.role",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "tattle.users.password",
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
            "description": "Error: In MySQL 8.0 storage engine is responsible for providing its own partitioning handler, and the MySQL server no longer provides generic partitioning support. InnoDB and NDB are the only storage engines that provide a native partitioning handler that is supported in MySQL 8.0. A partitioned table using any other storage engine must be altered—either to convert it to InnoDB or NDB, or to remove its partitioning—before upgrading the server, else it cannot be used afterwards.",
            "documentationLink": "https://dev.mysql.com/doc/refman/8.0/en/upgrading-from-previous-series.html#upgrade-configuration-changes",
            "detectedProblems": [
                {
                    "level": "Error",
                    "dbObject": "edwstatsdb.kettle_log_channel",
                    "description": "MyISAM engine does not support native partitioning"
                },
                {
                    "level": "Error",
                    "dbObject": "edwstatsdb.kettle_log_job",
                    "description": "MyISAM engine does not support native partitioning"
                },
                {
                    "level": "Error",
                    "dbObject": "edwstatsdb.kettle_log_job_entry",
                    "description": "MyISAM engine does not support native partitioning"
                },
                {
                    "level": "Error",
                    "dbObject": "edwstatsdb.kettle_log_step",
                    "description": "MyISAM engine does not support native partitioning"
                },
                {
                    "level": "Error",
                    "dbObject": "edwstatsdb.kettle_log_transformation",
                    "description": "MyISAM engine does not support native partitioning"
                }
            ]
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
                    "description": " of 15 session(s) does not contain either NO_ZERO_DATE or NO_ZERO_IN_DATE which allows insertion of zero dates"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.data_node_instance.scheduled_ts",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.edge_log.old_created_ts",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.edge_log.old_modified_ts",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.edge_log.new_created_ts",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.edge_log.new_modified_ts",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_instance.scheduled_ts",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_instance_bkp.scheduled_ts",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_instance_bkp_mar2018.scheduled_ts",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_instance_db.scheduled_ts",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_instance_de_3949.scheduled_ts",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_notification.modified_ts",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.node_override.created_ts",
                    "description": "column has zero default value: 0000-00-00 00:00:00"
                },
                {
                    "level": "Warning",
                    "dbObject": "edwmetadb.sla_report.cal_date",
                    "description": "column has zero default value: 0000-00-00"
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
