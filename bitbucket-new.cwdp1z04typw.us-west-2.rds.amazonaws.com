{
    "serverAddress": "bitbucket-new.cwdp1z04typw.us-west-2.rds.amazonaws.com:3306",
    "serverVersion": "5.7.38-log - Source distribution",
    "targetVersion": "8.0.27",
    "errorCount": 0,
    "warningCount": 427,
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
                    "dbObject": "bitbucket",
                    "description": "schema's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "mysql",
                    "description": "schema's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "stash",
                    "description": "schema's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_02A6C0_REJECTED_REF.REF_DISPLAY_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_02A6C0_REJECTED_REF.REF_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_0E97B5_REPOSITORY_SHORTCUT.APPLICATION_LINK_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_0E97B5_REPOSITORY_SHORTCUT.LABEL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_0E97B5_REPOSITORY_SHORTCUT.PRODUCT_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_0E97B5_REPOSITORY_SHORTCUT.URL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_117433_S_B_P_SETTING.CHANNEL_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_117433_S_B_P_SETTING.CHANNEL_NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_117433_S_B_P_SETTING.EVENTS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_117433_S_B_P_SETTING.PROJECT_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_117433_S_B_P_SETTING.PR_MESSAGE_FORMAT",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_117433_S_B_P_SETTING.PUSH_MESSAGE_FORMAT",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_117433_S_B_P_SETTING.TEAM_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_117433_S_B_P_SETTING.TEAM_NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_117433_S_TEAM_SETTING.ACCESS_TOKEN",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_117433_S_TEAM_SETTING.CREATED_BY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_117433_S_TEAM_SETTING.PROJECT_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_117433_S_TEAM_SETTING.TEAM_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_117433_S_TEAM_SETTING.TEAM_NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2915AB_REPO_CONFIG001.DESCRIPTION",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2915AB_REPO_CONFIG001.PROJECT_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2915AB_REPO_CONFIG001.SLUG",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2AD648_INSIGHT_ANNOTATION.EXTERNAL_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2AD648_INSIGHT_ANNOTATION.LINK",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2AD648_INSIGHT_ANNOTATION.MESSAGE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2AD648_INSIGHT_ANNOTATION.PATH",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2AD648_INSIGHT_ANNOTATION.PATH_MD5",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2AD648_INSIGHT_REPORT.COMMIT_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2AD648_INSIGHT_REPORT.DATA",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2AD648_INSIGHT_REPORT.DETAILS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2AD648_INSIGHT_REPORT.LINK",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2AD648_INSIGHT_REPORT.LOGO",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2AD648_INSIGHT_REPORT.REPORTER",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2AD648_INSIGHT_REPORT.REPORT_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_2AD648_INSIGHT_REPORT.TITLE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_33D892_COMMENT_JIRA_ISSUE.ISSUE_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_371AEF_DAILY_COUNTS.EVENT_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_371AEF_DAILY_COUNTS.ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_371AEF_HIST_INVOCATION.ERROR_CONTENT",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_371AEF_HIST_INVOCATION.EVENT_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_371AEF_HIST_INVOCATION.ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_371AEF_HIST_INVOCATION.OUTCOME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_371AEF_HIST_INVOCATION.REQUEST_BODY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_371AEF_HIST_INVOCATION.REQUEST_HEADERS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_371AEF_HIST_INVOCATION.REQUEST_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_371AEF_HIST_INVOCATION.REQUEST_METHOD",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_371AEF_HIST_INVOCATION.REQUEST_URL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_371AEF_HIST_INVOCATION.RESPONSE_BODY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_371AEF_HIST_INVOCATION.RESPONSE_HEADERS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_371AEF_HIST_INVOCATION.RESULT_DESCRIPTION",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_38321B_CUSTOM_CONTENT_LINK.CONTENT_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_38321B_CUSTOM_CONTENT_LINK.LINK_LABEL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_38321B_CUSTOM_CONTENT_LINK.LINK_URL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_HEALTH_CHECK_STATUS.APPLICATION_NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_HEALTH_CHECK_STATUS.COMPLETE_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_HEALTH_CHECK_STATUS.DESCRIPTION",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_HEALTH_CHECK_STATUS.FAILURE_REASON",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_HEALTH_CHECK_STATUS.SEVERITY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_HEALTH_CHECK_STATUS.STATUS_NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_PROPERTIES.PROPERTY_NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_PROPERTIES.PROPERTY_VALUE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_READ_NOTIFICATIONS.USER_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_TASK_MONITOR.CLUSTERED_TASK_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_TASK_MONITOR.NODE_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_TASK_MONITOR.PROGRESS_MESSAGE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_TASK_MONITOR.SERIALIZED_ERRORS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_TASK_MONITOR.SERIALIZED_WARNINGS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_TASK_MONITOR.TASK_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_TASK_MONITOR.TASK_MONITOR_KIND",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4789DD_TASK_MONITOR.TASK_STATUS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4F04F4_WHCONFIG.TITLE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4F04F4_WHCONFIG.URL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4F04F4_WHCONFIG.COMMITTERS_TO_IGNORE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_4F04F4_WHCONFIG.BRANCHES_TO_IGNORE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_58E6CE_HIPCHAT_NOTIFICATION.NOTIFICATION_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_58E6CE_HIPCHAT_NOTIFICATION.ROOM_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_5FB9D7_AOHIP_CHAT_LINK.API_URL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_5FB9D7_AOHIP_CHAT_LINK.CONNECT_DESCRIPTOR",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_5FB9D7_AOHIP_CHAT_LINK.GROUP_NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_5FB9D7_AOHIP_CHAT_LINK.OAUTH_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_5FB9D7_AOHIP_CHAT_LINK.SECRET_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_5FB9D7_AOHIP_CHAT_LINK.SYSTEM_PASSWORD",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_5FB9D7_AOHIP_CHAT_LINK.SYSTEM_USER",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_5FB9D7_AOHIP_CHAT_LINK.SYSTEM_USER_TOKEN",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_5FB9D7_AOHIP_CHAT_LINK.TOKEN",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_5FB9D7_AOHIP_CHAT_USER.HIP_CHAT_USER_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_5FB9D7_AOHIP_CHAT_USER.HIP_CHAT_USER_NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_5FB9D7_AOHIP_CHAT_USER.REFRESH_CODE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_5FB9D7_AOHIP_CHAT_USER.USER_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_5FB9D7_AOHIP_CHAT_USER.USER_SCOPES",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_5FB9D7_AOHIP_CHAT_USER.USER_TOKEN",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_616D7B_BRANCH_MODEL.DEV_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_616D7B_BRANCH_MODEL.PROD_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_616D7B_BRANCH_MODEL_CONFIG.DEV_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_616D7B_BRANCH_MODEL_CONFIG.PROD_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_616D7B_BRANCH_MODEL_CONFIG.SCOPE_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_616D7B_BRANCH_TYPE.PREFIX",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_616D7B_BRANCH_TYPE.TYPE_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_616D7B_BRANCH_TYPE_CONFIG.PREFIX",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_616D7B_BRANCH_TYPE_CONFIG.TYPE_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_616D7B_SCOPE_AUTO_MERGE.SCOPE_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_6292E3_GRAPHS_COMMITS.HASH_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_6292E3_GRAPHS_COMMITS.PARENT_HASH_IDS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_6292E3_GRAPHS_CONTRIBUTORS.EMAIL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_6292E3_GRAPHS_CONTRIBUTORS.NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_6292E3_GRAPHS_IDX_QUEUE.FROM_HASH",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_6292E3_GRAPHS_IDX_QUEUE.REF_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_6292E3_GRAPHS_IDX_QUEUE.SOURCE_NODE_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_6292E3_GRAPHS_IDX_QUEUE.TO_HASH",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_68C153_SCSGLOBAL_SETTINGS.GLOBAL_SETTINGS_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_68C153_SCSGLOBAL_SETTINGS.NO_HIGHLIGHT_EXTENSIONS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_68C153_SCSREPO_SETTINGS.REF_REGEX",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_68C153_SCSREPO_SETTINGS.REPOSITORY_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_6978BB_PERMITTED_ENTITY.GROUP_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_6978BB_RESTRICTED_REF.REF_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_6978BB_RESTRICTED_REF.REF_VALUE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_6978BB_RESTRICTED_REF.RESTRICTION_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_6978BB_RESTRICTED_REF.SCOPE_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_777666_JIRA_INDEX.BRANCH",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_777666_JIRA_INDEX.ISSUE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_777666_JIRA_INDEX.PR_STATE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_777666_UPDATED_ISSUES.ISSUE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_8E6075_MIRRORING_REQUEST.ADDON_DESCRIPTOR_URI",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_8E6075_MIRRORING_REQUEST.BASE_URL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_8E6075_MIRRORING_REQUEST.DESCRIPTOR_URL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_8E6075_MIRRORING_REQUEST.MIRROR_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_8E6075_MIRRORING_REQUEST.MIRROR_NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_8E6075_MIRRORING_REQUEST.PRODUCT_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_8E6075_MIRRORING_REQUEST.PRODUCT_VERSION",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_8E6075_MIRRORING_REQUEST.STATE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_8E6075_MIRROR_SERVER.ADD_ON_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_8E6075_MIRROR_SERVER.BASE_URL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_8E6075_MIRROR_SERVER.ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_8E6075_MIRROR_SERVER.NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_8E6075_MIRROR_SERVER.PRODUCT_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_8E6075_MIRROR_SERVER.PRODUCT_VERSION",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_8E6075_MIRROR_SERVER.STATE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_92D5D5_USER_NOTIFICATION.BATCH_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_92D5D5_USER_NOTIFICATION.BATCH_SENDER_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_92D5D5_USER_NOTIFICATION.DATA",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_9DEC2A_PR_CONDITION.SCOPE_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_9DEC2A_PR_CONDITION.SOURCE_REF_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_9DEC2A_PR_CONDITION.SOURCE_REF_VALUE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_9DEC2A_PR_CONDITION.TARGET_REF_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_9DEC2A_PR_CONDITION.TARGET_REF_VALUE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_A0B856_WEBHOOK.NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_A0B856_WEBHOOK.SCOPE_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_A0B856_WEBHOOK.SCOPE_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_A0B856_WEBHOOK.URL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_A0B856_WEBHOOK_CONFIG.KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_A0B856_WEBHOOK_CONFIG.VALUE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_A0B856_WEBHOOK_EVENT.EVENT_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_A0B856_WEB_HOOK_LISTENER_AO.EVENTS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_A0B856_WEB_HOOK_LISTENER_AO.LAST_UPDATED_USER",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_A0B856_WEB_HOOK_LISTENER_AO.NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_A0B856_WEB_HOOK_LISTENER_AO.PARAMETERS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_A0B856_WEB_HOOK_LISTENER_AO.REGISTRATION_METHOD",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_A0B856_WEB_HOOK_LISTENER_AO.URL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_A0B856_WEB_HOOK_LISTENER_AO.DESCRIPTION",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_A0B856_WEB_HOOK_LISTENER_AO.FILTERS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_B586BC_GPG_KEY.EMAIL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_B586BC_GPG_KEY.FINGERPRINT",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_B586BC_GPG_KEY.KEY_TEXT",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_B586BC_GPG_SUB_KEY.FINGERPRINT",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_B586BC_GPG_SUB_KEY.FK_GPG_KEY_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_BD73C3_PROJECT_AUDIT.ACTION",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_BD73C3_PROJECT_AUDIT.DETAILS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_BD73C3_REPOSITORY_AUDIT.ACTION",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_BD73C3_REPOSITORY_AUDIT.DETAILS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_ADMIN_CONFIG001.SONAR_LOGIN",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_ADMIN_CONFIG001.SONAR_PASSWORD",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_ADMIN_CONFIG001.SONAR_SERVER_URL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_ADMIN_CONFIG001.DESCRIPTION",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_ADMIN_CONFIG001.SONAR_TOKEN",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_ADMIN_CONFIG001.NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_REPO_CONFIG001.BRANCH_PREFIX",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_REPO_CONFIG001.COVERAGE_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_REPO_CONFIG001.ILLEGAL_BRANCH_REPLACEMENT",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_REPO_CONFIG001.SONAR_BUILD_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_REPO_CONFIG001.SONAR_ISSUE_MIN_SEVERITY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_REPO_CONFIG001.SONAR_ISSUE_TYPE_MAX_INCREASE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_REPO_CONFIG001.SONAR_PROJECT_DESC",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_REPO_CONFIG001.SONAR_PROJECT_FULL_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_REPO_CONFIG001.SONAR_PROJECT_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_REPO_CONFIG001.WORKING_SUB_DIRECTORY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_C716BC_REPO_CONFIG001.STATISTICS_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_CFE8FA_BUILD_STATUS.CSID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_CFE8FA_BUILD_STATUS.DESCRIPTION",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_CFE8FA_BUILD_STATUS.KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_CFE8FA_BUILD_STATUS.NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_CFE8FA_BUILD_STATUS.STATE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_CFE8FA_BUILD_STATUS.URL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_D6A508_REPO_IMPORT_TASK.CLONE_URL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_D6A508_REPO_IMPORT_TASK.EXTERNAL_REPO_NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_DA74DF_BRANCH_CONTRIBUTOR.AUTHOR_EMAIL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_DA74DF_BRANCH_CONTRIBUTOR.DAY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_DA74DF_BRANCH_CONTRIBUTOR.LATEST_HASH",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_DA74DF_COMMIT.AUTHOR",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_DA74DF_COMMIT.AUTHOR_EMAIL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_DA74DF_COMMIT.COMMIT_DAY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_DA74DF_COMMIT.HASH",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_DA74DF_COMMIT.PARENTS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_DA74DF_FILETYPE.CATEGORY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_DA74DF_FILETYPE.NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_DA74DF_FILETYPE.PATH",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_DA74DF_LATEST_HASH.BRANCH",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_DA74DF_LATEST_HASH.HASH",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_DA74DF_LATEST_HASH.OPERATION",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_DCF3B4_PULL_REQUEST_RULES.EVENT",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_E5A814_ACCESS_TOKEN.HASHED_TOKEN",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_E5A814_ACCESS_TOKEN.NAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_E5A814_ACCESS_TOKEN.TOKEN_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_E5A814_ACCESS_TOKEN_PERM.FK_ACCESS_TOKEN_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_ED669C_SEEN_ASSERTIONS.ASSERTION_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_F4ED3A_ADD_ON_PROPERTY_AO.PLUGIN_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_F4ED3A_ADD_ON_PROPERTY_AO.PRIMARY_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_F4ED3A_ADD_ON_PROPERTY_AO.PROPERTY_KEY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_F4ED3A_ADD_ON_PROPERTY_AO.VALUE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_FB71B4_SSH_PUBLIC_KEY.KEY_MD5",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_FB71B4_SSH_PUBLIC_KEY.KEY_TEXT",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_FB71B4_SSH_PUBLIC_KEY.LABEL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_FB71B4_SSH_PUBLIC_KEY.KEY_TYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_FB71B4_SSH_PUBLIC_KEY.LABEL_LOWER",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_FD32E0_PRCHECKS.LAST_EXCEPTION_DETAIL",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.AO_FD32E0_PRCHECKS.LAST_EXCEPTION_SUMMARY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.DATABASECHANGELOG.ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.DATABASECHANGELOG.AUTHOR",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.DATABASECHANGELOG.FILENAME",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.DATABASECHANGELOG.EXECTYPE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.DATABASECHANGELOG.MD5SUM",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.DATABASECHANGELOG.DESCRIPTION",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.DATABASECHANGELOG.COMMENTS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.DATABASECHANGELOG.TAG",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.DATABASECHANGELOG.LIQUIBASE",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.DATABASECHANGELOG.CONTEXTS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.DATABASECHANGELOG.LABELS",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.DATABASECHANGELOG.DEPLOYMENT_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.DATABASECHANGELOGLOCK.LOCKEDBY",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.app_property.prop_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.app_property.prop_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_alert.details_json",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_alert.issue_component_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_alert.issue_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_alert.node_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_alert.node_name_lower",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_alert.trigger_module",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_alert.trigger_plugin_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_alert.trigger_plugin_key_lower",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_alert.trigger_plugin_version",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_clusteredjob.job_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_clusteredjob.job_runner_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_clusteredjob.cron_expression",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_clusteredjob.time_zone",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_comment.comment_text",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_comment_thread.from_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_comment_thread.from_path",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_comment_thread.to_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_comment_thread.to_path",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_integrity_event.event_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_integrity_event.event_node",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_job.node_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_job.progress_message",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_job.type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_job_message.subject",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_job_message.text",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_label.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_pr_commit.commit_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_proj_merge_config.scm_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_proj_merge_config.default_strategy_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_proj_merge_strategy.strategy_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_project_alias.namespace",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_project_alias.project_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_repo_merge_config.default_strategy_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_repo_merge_strategy.strategy_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_repository_alias.project_namespace",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_repository_alias.project_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_repository_alias.slug",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_scm_merge_config.scm_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_scm_merge_config.default_strategy_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.bb_scm_merge_strategy.strategy_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.changeset.id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cs_attribute.cs_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cs_attribute.att_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cs_attribute.att_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cs_indexer_state.indexer_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cs_repo_membership.cs_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.current_app.application_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.current_app.public_key_base64",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.current_app.private_key_base64",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_app_dir_group_mapping.group_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_app_dir_mapping.is_allow_all",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_app_dir_operation.operation_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_application.application_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_application.lower_application_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_application.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_application.application_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_application.credential",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_application.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_application_address.remote_address",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_application_alias.user_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_application_alias.lower_user_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_application_alias.alias_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_application_alias.lower_alias_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_application_attribute.attribute_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_application_attribute.attribute_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_directory.directory_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_directory.lower_directory_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_directory.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_directory.impl_class",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_directory.lower_impl_class",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_directory.directory_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_directory.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_directory_attribute.attribute_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_directory_attribute.attribute_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_directory_operation.operation_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_group.group_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_group.lower_group_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_group.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_group.group_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_group.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_group.is_local",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_group.external_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_group_attribute.attribute_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_group_attribute.attribute_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_group_attribute.attribute_lower_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_membership.membership_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_membership.group_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_membership.parent_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_membership.lower_parent_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_membership.child_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_membership.lower_child_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_property.property_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_property.property_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_property.property_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_tombstone.tombstone_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_tombstone.entity_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_tombstone.parent",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user.user_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user.lower_user_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user.first_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user.lower_first_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user.last_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user.lower_last_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user.display_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user.lower_display_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user.email_address",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user.lower_email_address",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user.credential",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user.is_active",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user.external_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user_attribute.attribute_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user_attribute.attribute_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user_attribute.attribute_lower_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_user_credential_record.password_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_webhook.endpoint_url",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.cwd_webhook.token",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.id_sequence.sequence_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.plugin_setting.namespace",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.plugin_setting.key_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.plugin_setting.key_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.plugin_state.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.project.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.project.project_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.project.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.project.namespace",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.repository.slug",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.repository.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.repository.scm_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.repository.hierarchy_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_cmt_discussion.commit_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_cmt_discussion.parent_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_deleted_group.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_drift_request.old_from_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_drift_request.old_to_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_drift_request.new_from_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_drift_request.new_to_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_global_permission.group_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_normal_user.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_normal_user.slug",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_normal_user.locale",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_normal_user.time_zone",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pr_merge_activity.hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pr_participant.last_reviewed_commit",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pr_rescope_activity.from_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pr_rescope_activity.to_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pr_rescope_activity.prev_from_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pr_rescope_activity.prev_to_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pr_rescope_commit.changeset_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pr_rescope_request_change.ref_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pr_rescope_request_change.from_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pr_rescope_request_change.to_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_project_permission.group_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pull_request.from_branch_fqn",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pull_request.to_branch_fqn",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pull_request.from_branch_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pull_request.to_branch_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pull_request.from_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pull_request.to_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pull_request.title",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_pull_request.description",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_remember_me_token.series",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_remember_me_token.token",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_remember_me_token.claimed_address",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_repo_hook.hook_key",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_repo_permission.group_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_repo_push_activity.trigger_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_repo_push_ref.ref_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_repo_push_ref.from_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_repo_push_ref.to_hash",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_repository_scoped_id.scope_type",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_service_user.display_name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_service_user.name",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_service_user.slug",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_service_user.email_address",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_service_user.label",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_shared_lob.lob_data",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.sta_task.task_text",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.trusted_app.application_id",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.trusted_app.public_key_base64",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "bitbucket.trusted_app_restriction.restriction_value",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "stash.AO_02A6C0_REJECTED_REF.REF_DISPLAY_ID",
                    "description": "column's default character set: utf8"
                },
                {
                    "level": "Warning",
                    "dbObject": "stash.AO_02A6C0_REJECTED_REF.REF_ID",
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
