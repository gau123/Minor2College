

<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head><meta name="robots" content="all" /><meta name="keywords" content="Easy Learning, EzzyLearning,  Email Validation Web Service" /><meta name="description" content="Email Validation Web Service validates email address format available at EzzyLearning" /><meta charset="UTF-8" /><title>
	Email Validation Web Service
</title><link href="../favicon.ico" rel="icon" type="image/x-icon" /><link href="../favicon.ico" rel="shortcut icon" type="image/x-icon" /><link id="screen_css" rel="stylesheet" href="../styles/ezzylearning_style.css" type="text/css" media="all" />
    <script type="text/javascript" src='/scripts/jquery-1.7.2.min.js'></script>
    <script type="text/javascript" src='/scripts/ezzylearning.js'></script>
    <script type="text/javascript">
        $(document).ready(function () {
            if ($.browser.msie && $.browser.version.substr(0, 1) < 7) {
                $('li').has('ul').mouseover(function () {
                    $(this).children('ul').show();
                }).mouseout(function () {
                    $(this).children('ul').hide();
                })
            }

            RegisterWatermarkScript();
        });

        function RegisterWatermarkScript() {
            $$("txtSearchBox").focus(function () {
                if ($(this).val() == 'Type keywords') {
                    $(this).removeClass('search_box_hint').val('');
                }
            }).blur(function () {
                if ($(this).val() == '') {
                    $(this).addClass('search_box_hint').val('Type keywords');
                }
            });
        }      

    </script>
    <style type="text/css">
        .recentcomments a
        {
            display: inline !important;
            padding: 0 !important;
            margin: 0 !important;
        }
        #header_wrapper, #nivo_caption_wrapper .caption_cat, #content_wrapper .sidebar .content .sidebar_widget li h2.widgettitle, h2.widgettitle, .post_img .caption_cat, .pagination span.current, .pagination a:hover, table tr th, .flex-control-nav li a.active
        {
            background: #4391e0;
        }
        .pagination span.current, .pagination a:hover
        {
            border: 1px solid #4391e0;
        }
        #footer h2.widgettitle
        {
            color: #4391e0;
        }
    </style>
</head>
<body>
    <a name="top"></a>
    <form method="post" action="EmailValidationService.aspx" id="form1">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTIwNDM1MjQ3NjQPZBYCZg9kFgQCAQ9kFgICCA8VAhwvc2NyaXB0cy9qcXVlcnktMS43LjIubWluLmpzGC9zY3JpcHRzL2V6enlsZWFybmluZy5qc2QCAw9kFg4CEQ8WAh4LXyFJdGVtQ291bnQCCxYWAgEPZBYCAgEPDxYEHgtOYXZpZ2F0ZVVybAUmfi90ZWNobm9sb2d5LmFzcHg/dGVjaGlkPTFoZyZxPWFzcC1uZXQeBFRleHQFB0FTUC5ORVRkZAICD2QWAgIBDw8WBB8BBSZ+L3RlY2hub2xvZ3kuYXNweD90ZWNoaWQ9QW5EJnE9YW5kcm9pZB8CBQdBbmRyb2lkZGQCAw9kFgICAQ8PFgQfAQUjfi90ZWNobm9sb2d5LmFzcHg/dGVjaGlkPWFqYSZxPWFqYXgfAgUEQUpBWGRkAgQPZBYCAgEPDxYEHwEFJX4vdGVjaG5vbG9neS5hc3B4P3RlY2hpZD13VGwmcT1qcXVlcnkfAgUGSlF1ZXJ5ZGQCBQ9kFgICAQ8PFgQfAQUifi90ZWNobm9sb2d5LmFzcHg/dGVjaGlkPXZwayZxPXdjZh8CBQNXQ0ZkZAIGD2QWAgIBDw8WBB8BBSx+L3RlY2hub2xvZ3kuYXNweD90ZWNoaWQ9aXpMJnE9dmlzdWFsLWNzaGFycB8CBQlWaXN1YWwgQyNkZAIHD2QWAgIBDw8WBB8BBSZ+L3RlY2hub2xvZ3kuYXNweD90ZWNoaWQ9d3RuJnE9YWRvLW5ldB8CBQdBRE8uTkVUZGQCCA9kFgICAQ8PFgQfAQUsfi90ZWNobm9sb2d5LmFzcHg/dGVjaGlkPTVuWCZxPW5ldC1mcmFtZXdvcmsfAgUOLk5FVCBGcmFtZXdvcmtkZAIJD2QWAgIBDw8WBB8BBSN+L3RlY2hub2xvZ3kuYXNweD90ZWNoaWQ9bG5xJnE9bGlucR8CBQRMSU5RZGQCCg9kFgICAQ8PFgQfAQUrfi90ZWNobm9sb2d5LmFzcHg/dGVjaGlkPWZSayZxPXZpc3VhbC1iYXNpYx8CBQxWaXN1YWwgQmFzaWNkZAILD2QWAgIBDw8WBB8BBSN+L3RlY2hub2xvZ3kuYXNweD90ZWNoaWQ9R3A0JnE9amF2YR8CBQRKYXZhZGQCFQ8WAh8AAgoWFAIBD2QWAgIBDw8WBB8BBSx+L3RlY2hub2xvZ3lfaG93dG8uYXNweD90ZWNoaWQ9MWhnJnE9YXNwLW5ldB8CBQdBU1AuTkVUZGQCAg9kFgICAQ8PFgQfAQUsfi90ZWNobm9sb2d5X2hvd3RvLmFzcHg/dGVjaGlkPUFuRCZxPWFuZHJvaWQfAgUHQW5kcm9pZGRkAgMPZBYCAgEPDxYEHwEFKX4vdGVjaG5vbG9neV9ob3d0by5hc3B4P3RlY2hpZD1hamEmcT1hamF4HwIFBEFKQVhkZAIED2QWAgIBDw8WBB8BBSt+L3RlY2hub2xvZ3lfaG93dG8uYXNweD90ZWNoaWQ9d1RsJnE9anF1ZXJ5HwIFBkpRdWVyeWRkAgUPZBYCAgEPDxYEHwEFMn4vdGVjaG5vbG9neV9ob3d0by5hc3B4P3RlY2hpZD1pekwmcT12aXN1YWwtY3NoYXJwHwIFCVZpc3VhbCBDI2RkAgYPZBYCAgEPDxYEHwEFLH4vdGVjaG5vbG9neV9ob3d0by5hc3B4P3RlY2hpZD13dG4mcT1hZG8tbmV0HwIFB0FETy5ORVRkZAIHD2QWAgIBDw8WBB8BBTJ+L3RlY2hub2xvZ3lfaG93dG8uYXNweD90ZWNoaWQ9NW5YJnE9bmV0LWZyYW1ld29yax8CBQ4uTkVUIEZyYW1ld29ya2RkAggPZBYCAgEPDxYEHwEFKX4vdGVjaG5vbG9neV9ob3d0by5hc3B4P3RlY2hpZD1sbnEmcT1saW5xHwIFBExJTlFkZAIJD2QWAgIBDw8WBB8BBTF+L3RlY2hub2xvZ3lfaG93dG8uYXNweD90ZWNoaWQ9ZlJrJnE9dmlzdWFsLWJhc2ljHwIFDFZpc3VhbCBCYXNpY2RkAgoPZBYCAgEPDxYEHwEFKX4vdGVjaG5vbG9neV9ob3d0by5hc3B4P3RlY2hpZD1HcDQmcT1qYXZhHwIFBEphdmFkZAIZDxYCHwACEBYgAgEPZBYCAgEPDxYEHwEFLX4vdGVjaG5vbG9neV9ibG9nLmFzcHg/dGVjaGlkPTJqeSZxPWJvb3RzdHJhcB8CBQlCb290c3RyYXBkZAICD2QWAgIBDw8WBB8BBSl+L3RlY2hub2xvZ3lfYmxvZy5hc3B4P3RlY2hpZD1aQnImcT1odG1sNR8CBQVIVE1MNWRkAgMPZBYCAgEPDxYEHwEFKH4vdGVjaG5vbG9neV9ibG9nLmFzcHg/dGVjaGlkPThsUiZxPWNzczMfAgUEQ1NTM2RkAgQPZBYCAgEPDxYEHwEFK34vdGVjaG5vbG9neV9ibG9nLmFzcHg/dGVjaGlkPTFoZyZxPWFzcC1uZXQfAgUHQVNQLk5FVGRkAgUPZBYCAgEPDxYEHwEFLn4vdGVjaG5vbG9neV9ibG9nLmFzcHg/dGVjaGlkPWtnSyZxPWphdmFzY3JpcHQfAgUKSmF2YVNjcmlwdGRkAgYPZBYCAgEPDxYEHwEFK34vdGVjaG5vbG9neV9ibG9nLmFzcHg/dGVjaGlkPUFuRCZxPWFuZHJvaWQfAgUHQW5kcm9pZGRkAgcPZBYCAgEPDxYEHwEFKn4vdGVjaG5vbG9neV9ibG9nLmFzcHg/dGVjaGlkPXdUbCZxPWpxdWVyeR8CBQZKUXVlcnlkZAIID2QWAgIBDw8WBB8BBTF+L3RlY2hub2xvZ3lfYmxvZy5hc3B4P3RlY2hpZD1pekwmcT12aXN1YWwtY3NoYXJwHwIFCVZpc3VhbCBDI2RkAgkPZBYCAgEPDxYEHwEFMX4vdGVjaG5vbG9neV9ibG9nLmFzcHg/dGVjaGlkPTVuWCZxPW5ldC1mcmFtZXdvcmsfAgUOLk5FVCBGcmFtZXdvcmtkZAIKD2QWAgIBDw8WBB8BBTF+L3RlY2hub2xvZ3lfYmxvZy5hc3B4P3RlY2hpZD1SSG4mcT12aXN1YWwtc3R1ZGlvHwIFDVZpc3VhbCBTdHVkaW9kZAILD2QWAgIBDw8WBB8BBS9+L3RlY2hub2xvZ3lfYmxvZy5hc3B4P3RlY2hpZD1oa2omcT1hc3AtbmV0LW12Yx8CBQtBU1AuTkVUIE1WQ2RkAgwPZBYCAgEPDxYEHwEFM34vdGVjaG5vbG9neV9ibG9nLmFzcHg/dGVjaGlkPWJ2RSZxPXdpbmRvd3MtcGhvbmUtNx8CBQ9XaW5kb3dzIFBob25lIDdkZAIND2QWAgIBDw8WBB8BBS9+L3RlY2hub2xvZ3lfYmxvZy5hc3B4P3RlY2hpZD1Yc1gmcT1mcmVlLWVib29rcx8CBQtGcmVlIGVib29rc2RkAg4PZBYCAgEPDxYEHwEFMH4vdGVjaG5vbG9neV9ibG9nLmFzcHg/dGVjaGlkPTlzUyZxPWJvb2stcmV2aWV3cx8CBQxCb29rIFJldmlld3NkZAIPD2QWAgIBDw8WBB8BBSt+L3RlY2hub2xvZ3lfYmxvZy5hc3B4P3RlY2hpZD02MXgmcT1nZW5lcmFsHwIFB0dlbmVyYWxkZAIQD2QWAgIBDw8WBB8BBSx+L3RlY2hub2xvZ3lfYmxvZy5hc3B4P3RlY2hpZD14UzImcT1wZXJzb25hbB8CBQhQZXJzb25hbGRkAjMPFgIfAAIFFgoCAQ9kFgYCAQ8PFgIfAQUmfi90ZWNobm9sb2d5LmFzcHg/dGVjaGlkPTFoZyZxPWFzcC1uZXRkFgJmDw8WAh4ISW1hZ2VVcmwFHX4vaW1hZ2VzL0ltYWdlc05ldy9hc3BuZXQucG5nZGQCAw8PFgQfAQVMfi90dXRvcmlhbC5hc3B4P3RpZD01ODY0ODkzJnE9dXNpbmctcGFyYW1ldGVycy13aXRoLW9iamVjdGRhdGFzb3VyY2UtY29udHJvbB8CBS5Vc2luZyBQYXJhbWV0ZXJzIHdpdGggT2JqZWN0RGF0YVNvdXJjZSBDb250cm9sZGQCBQ8WAh8CBQ1KdW5lIDI0LCAyMDA5ZAICD2QWBgIBDw8WAh8BBSZ+L3RlY2hub2xvZ3kuYXNweD90ZWNoaWQ9MWhnJnE9YXNwLW5ldGQWAmYPDxYCHwMFHX4vaW1hZ2VzL0ltYWdlc05ldy9hc3BuZXQucG5nZGQCAw8PFgQfAQVJfi90dXRvcmlhbC5hc3B4P3RpZD0xOTkzMTQ2JnE9ZWRpdGluZy1kYXRhLXVzaW5nLWFzcC1uZXQtZ3JpZHZpZXctY29udHJvbB8CBStFZGl0aW5nIERhdGEgdXNpbmcgQVNQLk5FVCBHcmlkVmlldyBDb250cm9sZGQCBQ8WAh8CBQ5BcHJpbCAxMSwgMjAwOWQCAw9kFgYCAQ8PFgIfAQUmfi90ZWNobm9sb2d5LmFzcHg/dGVjaGlkPTFoZyZxPWFzcC1uZXRkFgJmDw8WAh8DBR1+L2ltYWdlcy9JbWFnZXNOZXcvYXNwbmV0LnBuZ2RkAgMPDxYEHwEFS34vdHV0b3JpYWwuYXNweD90aWQ9OTg3ODk4MyZxPWluc2VydC1yZWNvcmRzLXVzaW5nLW9iamVjdGRhdGFzb3VyY2UtY29udHJvbB8CBS1JbnNlcnQgUmVjb3JkcyB1c2luZyBPYmplY3REYXRhU291cmNlIENvbnRyb2xkZAIFDxYCHwIFDUp1bmUgMjcsIDIwMDlkAgQPZBYGAgEPDxYCHwEFJX4vdGVjaG5vbG9neS5hc3B4P3RlY2hpZD13VGwmcT1qcXVlcnlkFgJmDw8WAh8DBR1+L2ltYWdlcy9JbWFnZXNOZXcvanF1ZXJ5LnBuZ2RkAgMPDxYEHwEFYX4vdHV0b3JpYWwuYXNweD90aWQ9NzU5NzcxNCZxPWVkaXRpbmctYXNwLW5ldC1saXN0dmlldy1jb250cm9sLXVzaW5nLWpxdWVyeS1hamF4LWFuZC13ZWItc2VydmljZXMfAgVDRWRpdGluZyBBU1AuTkVUIExpc3RWaWV3IENvbnRyb2wgdXNpbmcgSlF1ZXJ5IEFKQVggYW5kIFdlYiBTZXJ2aWNlc2RkAgUPFgIfAgURRGVjZW1iZXIgMTYsIDIwMTBkAgUPZBYGAgEPDxYCHwEFI34vdGVjaG5vbG9neS5hc3B4P3RlY2hpZD1hamEmcT1hamF4ZBYCZg8PFgIfAwUbfi9pbWFnZXMvSW1hZ2VzTmV3L2FqYXgucG5nZGQCAw8PFgQfAQVWfi90dXRvcmlhbC5hc3B4P3RpZD0zOTY3NzkxJnE9Y2FsbGluZy13ZWItc2VydmljZXMtaW4tY2xpZW50LXNjcmlwdC11c2luZy1hc3AtbmV0LWFqYXgfAgU4Q2FsbGluZyBXZWIgU2VydmljZXMgaW4gQ2xpZW50IFNjcmlwdCB1c2luZyBBU1AuTkVUIEFKQVhkZAIFDxYCHwIFElNlcHRlbWJlciAyNSwgMjAwOWQCNQ8WAh8AAgcWDgIBD2QWBgIBDw8WAh8BBSt+L3RlY2hub2xvZ3lfaG93dG8uYXNweD90ZWNoaWQ9d1RsJnE9anF1ZXJ5ZBYCZg8PFgIfAwUdfi9pbWFnZXMvSW1hZ2VzTmV3L2pxdWVyeS5wbmdkZAIDDw8WBB8BBU9+L3R1dG9yaWFsX2hvd3RvLmFzcHg/dGlkPTk4NzEzOTk2MjUmcT1ob3ctdG8tY2hhbmdlLWlmcmFtZS1zb3VyY2UtdXNpbmctanF1ZXJ5HwIFKEhvdyB0byBDaGFuZ2UgSUZyYW1lIFNvdXJjZSB1c2luZyBKUXVlcnlkZAIFDxYCHwIFEU5vdmVtYmVyIDE0LCAyMDEyZAICD2QWBgIBDw8WAh8BBTJ+L3RlY2hub2xvZ3lfaG93dG8uYXNweD90ZWNoaWQ9NW5YJnE9bmV0LWZyYW1ld29ya2QWAmYPDxYCHwMFJH4vaW1hZ2VzL0ltYWdlc05ldy9uZXRfZnJhbWV3b3JrLnBuZ2RkAgMPDxYEHwEFS34vdHV0b3JpYWxfaG93dG8uYXNweD90aWQ9NjQxOTMxOTgzNCZxPWhvdy10by1zZXQtZmlsZXMtYXMtcmVhZC1vbmx5LWluLW5ldB8CBSVIb3cgdG8gU2V0IEZpbGVzIGFzIFJlYWQgT25seSBpbiAuTkVUZGQCBQ8WAh8CBQ9BdWd1c3QgMjksIDIwMTJkAgMPZBYGAgEPDxYCHwEFMn4vdGVjaG5vbG9neV9ob3d0by5hc3B4P3RlY2hpZD01blgmcT1uZXQtZnJhbWV3b3JrZBYCZg8PFgIfAwUkfi9pbWFnZXMvSW1hZ2VzTmV3L25ldF9mcmFtZXdvcmsucG5nZGQCAw8PFgQfAQVXfi90dXRvcmlhbF9ob3d0by5hc3B4P3RpZD00NTk0NTg3NTQ4JnE9aG93LXRvLWdldC1kb21haW4tY29udHJvbGxlcnMtaW5mb3JtYXRpb24taW4tbmV0HwIFMUhvdyB0byBnZXQgRG9tYWluIENvbnRyb2xsZXJzIEluZm9ybWF0aW9uIGluIC5ORVRkZAIFDxYCHwIFD0F1Z3VzdCAyOSwgMjAxMmQCBA9kFgYCAQ8PFgIfAQUyfi90ZWNobm9sb2d5X2hvd3RvLmFzcHg/dGVjaGlkPTVuWCZxPW5ldC1mcmFtZXdvcmtkFgJmDw8WAh8DBSR+L2ltYWdlcy9JbWFnZXNOZXcvbmV0X2ZyYW1ld29yay5wbmdkZAIDDw8WBB8BBVF+L3R1dG9yaWFsX2hvd3RvLmFzcHg/dGlkPTM5NTQyNDkyNzMmcT1ob3ctdG8tY2hlY2stdmFsaWRpdHktb2YtaXAtYWRkcmVzcy1pbi1uZXQfAgUrSG93IHRvIENoZWNrIFZhbGlkaXR5IG9mIElQIEFkZHJlc3MgaW4gLk5FVGRkAgUPFgIfAgUPQXVndXN0IDI5LCAyMDEyZAIFD2QWBgIBDw8WAh8BBTJ+L3RlY2hub2xvZ3lfaG93dG8uYXNweD90ZWNoaWQ9NW5YJnE9bmV0LWZyYW1ld29ya2QWAmYPDxYCHwMFJH4vaW1hZ2VzL0ltYWdlc05ldy9uZXRfZnJhbWV3b3JrLnBuZ2RkAgMPDxYEHwEFR34vdHV0b3JpYWxfaG93dG8uYXNweD90aWQ9MzczMjY2NDY0MiZxPWhvdy10by1waW5nLWFuLWlwLWFkZHJlc3MtaW4tbmV0HwIFIUhvdyB0byBQaW5nIGFuIElQIEFkZHJlc3MgaW4gLk5FVGRkAgUPFgIfAgUPQXVndXN0IDI5LCAyMDEyZAIGD2QWBgIBDw8WAh8BBTJ+L3RlY2hub2xvZ3lfaG93dG8uYXNweD90ZWNoaWQ9NW5YJnE9bmV0LWZyYW1ld29ya2QWAmYPDxYCHwMFJH4vaW1hZ2VzL0ltYWdlc05ldy9uZXRfZnJhbWV3b3JrLnBuZ2RkAgMPDxYEHwEFR34vdHV0b3JpYWxfaG93dG8uYXNweD90aWQ9OTkyNDQ5NzU3NSZxPWhvdy10by1jcmVhdGUtY29uZGl0aW9uYWwtbWV0aG9kHwIFIEhvdyB0byBDcmVhdGUgQ29uZGl0aW9uYWwgbWV0aG9kZGQCBQ8WAh8CBQ9BdWd1c3QgMjksIDIwMTJkAgcPZBYGAgEPDxYCHwEFMn4vdGVjaG5vbG9neV9ob3d0by5hc3B4P3RlY2hpZD01blgmcT1uZXQtZnJhbWV3b3JrZBYCZg8PFgIfAwUkfi9pbWFnZXMvSW1hZ2VzTmV3L25ldF9mcmFtZXdvcmsucG5nZGQCAw8PFgQfAQVOfi90dXRvcmlhbF9ob3d0by5hc3B4P3RpZD0xODkxMjQxNTQ3JnE9aG93LXRvLWNyZWF0ZS1icmVha3BvaW50LXByb2dyYW1taWNhbGx5HwIFJ0hvdyB0byBDcmVhdGUgQnJlYWtwb2ludCBwcm9ncmFtbWljYWxseWRkAgUPFgIfAgUPQXVndXN0IDI5LCAyMDEyZAI3DxYCHwACBRYKAgEPZBYGAgEPDxYCHwEFSX4vcG9zdC5hc3B4P2lkPTk0OTg5NDQxJnE9bWFnbmlmaWVyLWpzLS1tYWduaWZ5aW5nLWdsYXNzLWVmZmVjdC1vbi1pbWFnZXNkZAIDDw8WBB8BBUl+L3Bvc3QuYXNweD9pZD05NDk4OTQ0MSZxPW1hZ25pZmllci1qcy0tbWFnbmlmeWluZy1nbGFzcy1lZmZlY3Qtb24taW1hZ2VzHwIFMk1hZ25pZmllci5qcyDigJMgTWFnbmlmeWluZyBHbGFzcyBFZmZlY3Qgb24gSW1hZ2VzZGQCBQ8WAh8CBRFGZWJydWFyeSAyNSwgMjAxNGQCAg9kFgYCAQ8PFgIfAQVMfi9wb3N0LmFzcHg/aWQ9MjYxNzIyOTMmcT1saWdodC10YWJsZS0tYS1uZXctaW50ZXJhY3RpdmUtaWRlLWZvci1wcm9ncmFtbWluZ2RkAgMPDxYEHwEFTH4vcG9zdC5hc3B4P2lkPTI2MTcyMjkzJnE9bGlnaHQtdGFibGUtLWEtbmV3LWludGVyYWN0aXZlLWlkZS1mb3ItcHJvZ3JhbW1pbmcfAgU1TGlnaHQgVGFibGUg4oCTIEEgTmV3IEludGVyYWN0aXZlIElERSBmb3IgUHJvZ3JhbW1pbmdkZAIFDxYCHwIFEUZlYnJ1YXJ5IDI1LCAyMDE0ZAIDD2QWBgIBDw8WAh8BBU5+L3Bvc3QuYXNweD9pZD02NTEzMzI2NyZxPWZsZXhpYmxlLWFuZC1nb29kLWxvb2tpbmctc2hhcmUtYnV0dG9uLWpxdWVyeS1wbHVnaW5kZAIDDw8WBB8BBU5+L3Bvc3QuYXNweD9pZD02NTEzMzI2NyZxPWZsZXhpYmxlLWFuZC1nb29kLWxvb2tpbmctc2hhcmUtYnV0dG9uLWpxdWVyeS1wbHVnaW4fAgUyRmxleGlibGUgJiBHb29kLUxvb2tpbmcgU2hhcmUgQnV0dG9uIGpRdWVyeSBQbHVnaW5kZAIFDxYCHwIFEUZlYnJ1YXJ5IDI1LCAyMDE0ZAIED2QWBgIBDw8WAh8BBUR+L3Bvc3QuYXNweD9pZD03Njc5Nzg5MSZxPWEtY29sbGVjdGlvbi1vZi1jc3MzLXBvd2VyZWQtaG92ZXItZWZmZWN0c2RkAgMPDxYEHwEFRH4vcG9zdC5hc3B4P2lkPTc2Nzk3ODkxJnE9YS1jb2xsZWN0aW9uLW9mLWNzczMtcG93ZXJlZC1ob3Zlci1lZmZlY3RzHwIFKkEgQ29sbGVjdGlvbiBvZiBDU1MzIFBvd2VyZWQgSG92ZXIgRWZmZWN0c2RkAgUPFgIfAgURRmVicnVhcnkgMjUsIDIwMTRkAgUPZBYGAgEPDxYCHwEFS34vcG9zdC5hc3B4P2lkPTI1ODE0ODE3JnE9YWRkLWNvbnRlbnQtbWFuYWdlbWVudC1mdW5jdGlvbmFsaXR5LXRvLWFueS1zaXRlc2RkAgMPDxYEHwEFS34vcG9zdC5hc3B4P2lkPTI1ODE0ODE3JnE9YWRkLWNvbnRlbnQtbWFuYWdlbWVudC1mdW5jdGlvbmFsaXR5LXRvLWFueS1zaXRlcx8CBTFBZGQgQ29udGVudCBNYW5hZ2VtZW50IEZ1bmN0aW9uYWxpdHkgdG8gQW55IFNpdGVzZGQCBQ8WAh8CBRFGZWJydWFyeSAxMSwgMjAxNGQCOQ8WAh8CBd0GPGEgY2xhc3M9J3dlaWdodDEnIGhyZWY9Jy4uL3RlY2hub2xvZ3kuYXNweD90ZWNoaWQ9MWhnJnE9YXNwLW5ldCc+YXNwLm5ldDwvYT4gPGEgY2xhc3M9J3dlaWdodDUnIGhyZWY9Jy4uL3RlY2hub2xvZ3kuYXNweD90ZWNoaWQ9NW5YJnE9bmV0LWZyYW1ld29yayc+Lm5ldCBmcmFtZXdvcms8L2E+IDxhIGNsYXNzPSd3ZWlnaHQ0JyBocmVmPScuLi90ZWNobm9sb2d5LmFzcHg/dGVjaGlkPWFqYSZxPWFqYXgnPmFqYXg8L2E+IDxhIGNsYXNzPSd3ZWlnaHQ0JyBocmVmPScuLi90ZWNobm9sb2d5LmFzcHg/dGVjaGlkPUFuRCZxPWFuZHJvaWQnPmFuZHJvaWQ8L2E+IDxhIGNsYXNzPSd3ZWlnaHQ1JyBocmVmPScuLi90ZWNobm9sb2d5LmFzcHg/dGVjaGlkPWZSayZxPXZpc3VhbC1iYXNpYyc+dmlzdWFsIGJhc2ljPC9hPiA8YSBjbGFzcz0nd2VpZ2h0NScgaHJlZj0nLi4vdGVjaG5vbG9neS5hc3B4P3RlY2hpZD1HcDQmcT1qYXZhJz5qYXZhPC9hPiA8YSBjbGFzcz0nd2VpZ2h0NScgaHJlZj0nLi4vdGVjaG5vbG9neS5hc3B4P3RlY2hpZD1pekwmcT12aXN1YWwtY3NoYXJwJz52aXN1YWwgYyM8L2E+IDxhIGNsYXNzPSd3ZWlnaHQ1JyBocmVmPScuLi90ZWNobm9sb2d5LmFzcHg/dGVjaGlkPWxucSZxPWxpbnEnPmxpbnE8L2E+IDxhIGNsYXNzPSd3ZWlnaHQ1JyBocmVmPScuLi90ZWNobm9sb2d5LmFzcHg/dGVjaGlkPXZwayZxPXdjZic+d2NmPC9hPiA8YSBjbGFzcz0nd2VpZ2h0NCcgaHJlZj0nLi4vdGVjaG5vbG9neS5hc3B4P3RlY2hpZD13VGwmcT1qcXVlcnknPmpxdWVyeTwvYT4gPGEgY2xhc3M9J3dlaWdodDUnIGhyZWY9Jy4uL3RlY2hub2xvZ3kuYXNweD90ZWNoaWQ9d3RuJnE9YWRvLW5ldCc+YWRvLm5ldDwvYT4gZGRVj7yiMcVxcpg12iA0t5xQvdPoIDwE2JU+5kl17yD+pw==" />

<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAATvlRT2lGzaoaMszdy1ynr6nk35WLFUKf3Iwn3nhZrywiIj3cbrKhbQoguBHiGA/XVk9mKuXjYuXqcFs+TsNyLyni7qXeKzwC/on/3VEaVidP+W8gNc7lu8Qze01fV6ITo=" />
    <!-- Begin template wrapper -->
    <div id="wrapper">
        <div id="header_wrapper">
            <div id="header_content_wrapper">
                <div id="header_content_inner_left">
                    Search Tutorials: &nbsp;
                    <input name="ctl00$txtSearchBox" type="text" value="Type keywords" id="txtSearchBox" class="search_text_box search_box_hint" onKeyPress="javascript:DoButtonClick(event, this, &#39;btnGo&#39;);" />
                    <input type="submit" name="ctl00$btnGo" value=" GO " onclick="Search_Click(); return false;" id="btnGo" class="search_go_button" AlternateText="Search Tutorials" />
                    <input type="submit" name="ctl00$btnSearchSite" value="" id="btnSearchSite" style="display: none;" />
                </div>
                <div id="header_content_inner_right">
                    <a id="linkAboutMe" href="../portfolio/Default.aspx">About Me</a>
                    <span class='seperator_pipe'>|</span>
                    <a id="linkContact" href="../contactme.aspx">Contact Me</a>
                </div>
            </div>
        </div>
        <!-- End header -->
        <br class="clear" />
        <div class="standard_wrapper header">
            <div class="logo">
                <!-- Begin logo -->
                <a id="SiteLogo" title="EzzyLearning Home Page" href="../Default.aspx"><img title="EzzyLearning Home Page" src="../images/SiteLogo1.gif" alt="" /></a>
                <!-- End logo -->
            </div>
            <div class="header_ads">
                <div class="ads468">
                    
<script type="text/javascript"><!--
    google_ad_client = "ca-pub-0567452692527423";
    /* EzzyLearning_Banner_468_60 */
    google_ad_slot = "4502481951";
    google_ad_width = 468;
    google_ad_height = 60;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
                </div>
            </div>
            <br class="clear" />
        </div>
        <br class="clear" /> 
        <div class="standard_wrapper" style="border: 1px solid #111111;">
            <div class="menu-main-menu2-container">
                <ul id="menu">
                    <li>
                        <a id="linkHome" href="../Default.aspx">Home</a></li>
                    <li><a href="#">Tutorials</a>
                        
                                <ul>
                            
                                <li>
                                    <a id="mnuTutorialsCategories_FooterLinkOption_0" href="../technology.aspx?techid=1hg&amp;q=asp-net">ASP.NET</a>
                                </li>
                            
                                <li>
                                    <a id="mnuTutorialsCategories_FooterLinkOption_1" href="../technology.aspx?techid=AnD&amp;q=android">Android</a>
                                </li>
                            
                                <li>
                                    <a id="mnuTutorialsCategories_FooterLinkOption_2" href="../technology.aspx?techid=aja&amp;q=ajax">AJAX</a>
                                </li>
                            
                                <li>
                                    <a id="mnuTutorialsCategories_FooterLinkOption_3" href="../technology.aspx?techid=wTl&amp;q=jquery">JQuery</a>
                                </li>
                            
                                <li>
                                    <a id="mnuTutorialsCategories_FooterLinkOption_4" href="../technology.aspx?techid=vpk&amp;q=wcf">WCF</a>
                                </li>
                            
                                <li>
                                    <a id="mnuTutorialsCategories_FooterLinkOption_5" href="../technology.aspx?techid=izL&amp;q=visual-csharp">Visual C#</a>
                                </li>
                            
                                <li>
                                    <a id="mnuTutorialsCategories_FooterLinkOption_6" href="../technology.aspx?techid=wtn&amp;q=ado-net">ADO.NET</a>
                                </li>
                            
                                <li>
                                    <a id="mnuTutorialsCategories_FooterLinkOption_7" href="../technology.aspx?techid=5nX&amp;q=net-framework">.NET Framework</a>
                                </li>
                            
                                <li>
                                    <a id="mnuTutorialsCategories_FooterLinkOption_8" href="../technology.aspx?techid=lnq&amp;q=linq">LINQ</a>
                                </li>
                            
                                <li>
                                    <a id="mnuTutorialsCategories_FooterLinkOption_9" href="../technology.aspx?techid=fRk&amp;q=visual-basic">Visual Basic</a>
                                </li>
                            
                                <li>
                                    <a id="mnuTutorialsCategories_FooterLinkOption_10" href="../technology.aspx?techid=Gp4&amp;q=java">Java</a>
                                </li>
                            
                                </ul>
                            
                    </li>
                    <li>
                        <a id="HyperLink2" href="../howto.aspx">HOW TOs</a>
                        
                                <ul>
                            
                                <li>
                                    <a id="mnuHowTosCategories_linkHeading_0" href="../technology_howto.aspx?techid=1hg&amp;q=asp-net">ASP.NET</a>
                                </li>
                            
                                <li>
                                    <a id="mnuHowTosCategories_linkHeading_1" href="../technology_howto.aspx?techid=AnD&amp;q=android">Android</a>
                                </li>
                            
                                <li>
                                    <a id="mnuHowTosCategories_linkHeading_2" href="../technology_howto.aspx?techid=aja&amp;q=ajax">AJAX</a>
                                </li>
                            
                                <li>
                                    <a id="mnuHowTosCategories_linkHeading_3" href="../technology_howto.aspx?techid=wTl&amp;q=jquery">JQuery</a>
                                </li>
                            
                                <li>
                                    <a id="mnuHowTosCategories_linkHeading_4" href="../technology_howto.aspx?techid=izL&amp;q=visual-csharp">Visual C#</a>
                                </li>
                            
                                <li>
                                    <a id="mnuHowTosCategories_linkHeading_5" href="../technology_howto.aspx?techid=wtn&amp;q=ado-net">ADO.NET</a>
                                </li>
                            
                                <li>
                                    <a id="mnuHowTosCategories_linkHeading_6" href="../technology_howto.aspx?techid=5nX&amp;q=net-framework">.NET Framework</a>
                                </li>
                            
                                <li>
                                    <a id="mnuHowTosCategories_linkHeading_7" href="../technology_howto.aspx?techid=lnq&amp;q=linq">LINQ</a>
                                </li>
                            
                                <li>
                                    <a id="mnuHowTosCategories_linkHeading_8" href="../technology_howto.aspx?techid=fRk&amp;q=visual-basic">Visual Basic</a>
                                </li>
                            
                                <li>
                                    <a id="mnuHowTosCategories_linkHeading_9" href="../technology_howto.aspx?techid=Gp4&amp;q=java">Java</a>
                                </li>
                            
                                </ul>
                            
                    </li>
                    <li>
                        <a id="HyperLink12" href="../blog.aspx">Blog Posts</a>
                        
                                <ul>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_0" href="../technology_blog.aspx?techid=2jy&amp;q=bootstrap">Bootstrap</a>
                                </li>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_1" href="../technology_blog.aspx?techid=ZBr&amp;q=html5">HTML5</a>
                                </li>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_2" href="../technology_blog.aspx?techid=8lR&amp;q=css3">CSS3</a>
                                </li>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_3" href="../technology_blog.aspx?techid=1hg&amp;q=asp-net">ASP.NET</a>
                                </li>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_4" href="../technology_blog.aspx?techid=kgK&amp;q=javascript">JavaScript</a>
                                </li>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_5" href="../technology_blog.aspx?techid=AnD&amp;q=android">Android</a>
                                </li>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_6" href="../technology_blog.aspx?techid=wTl&amp;q=jquery">JQuery</a>
                                </li>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_7" href="../technology_blog.aspx?techid=izL&amp;q=visual-csharp">Visual C#</a>
                                </li>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_8" href="../technology_blog.aspx?techid=5nX&amp;q=net-framework">.NET Framework</a>
                                </li>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_9" href="../technology_blog.aspx?techid=RHn&amp;q=visual-studio">Visual Studio</a>
                                </li>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_10" href="../technology_blog.aspx?techid=hkj&amp;q=asp-net-mvc">ASP.NET MVC</a>
                                </li>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_11" href="../technology_blog.aspx?techid=bvE&amp;q=windows-phone-7">Windows Phone 7</a>
                                </li>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_12" href="../technology_blog.aspx?techid=XsX&amp;q=free-ebooks">Free ebooks</a>
                                </li>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_13" href="../technology_blog.aspx?techid=9sS&amp;q=book-reviews">Book Reviews</a>
                                </li>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_14" href="../technology_blog.aspx?techid=61x&amp;q=general">General</a>
                                </li>
                            
                                <li>
                                    <a id="mnuBlogCategories_linkHeading_15" href="../technology_blog.aspx?techid=xS2&amp;q=personal">Personal</a>
                                </li>
                            
                                </ul>
                            
                    </li>
                    <li>
                        <a id="linkPresentations" href="../presentations.aspx">Presentations</a></li>
                    <li>
                        <a id="linkSheets" href="../cheatsheets.aspx">Cheat Sheets</a></li>
                    <li>
                        <a id="HyperLink3" href="Default.aspx">Web Services</a></li>
                    
                </ul>
            </div>
        </div>
        <div id="menu_border_wrapper" style="text-align:center;	padding-top:15px; padding-bottom:10px;">
            
<script type="text/javascript"><!--
    google_ad_client = "ca-pub-0567452692527423";
    /* EzzyLearning_LinkUnit_728_15 */
    google_ad_slot = "6148975006";
    google_ad_width = 728;
    google_ad_height = 15;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
        </div>
        <br class="clear" />
        <div id="content_wrapper">
            <div class="inner">
                <!-- Begin main content -->
                <div class="inner_wrapper">
                    <div class="sidebar_content">
                        
    <h2 class="widgettitle header">
        Email Validation Web Service
    </h2>
    <table style="border: 0; width: 100%; margin-left: 9px; width: 628px;" cellpadding="2"
        cellspacing="0">
        <tr>
            <td style="padding-top: 5px; vertical-align: middle;">
                <div style="float: left; padding-right: 10px;">
                    <script src="http://platform.linkedin.com/in.js" type="text/javascript"></script>
                    <script type="IN/Share" data-url="http://www.ezzylearning.com/services/EmailValidationService.aspx" data-counter="right"></script>
                </div>
                <div style="float: left;">
                    <a href="http://twitter.com/share" class="twitter-share-button" data-count="horizontal">
                        Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
                </div>
                &nbsp;&nbsp;
                <div style="float: left; padding-right: 10px;">
                    <iframe src="http://www.facebook.com/plugins/like.php?href=http://www.ezzylearning.com/services/EmailValidationService.aspx&amp;layout=button_count&amp;show_faces=false&amp;width=450&amp;action=like&amp;colorscheme=light&amp;height=80"
                        scrolling="no" frameborder="0" style="border: none; overflow: hidden; width: 170px;
                        height: 25px; float: left;" allowtransparency="true"></iframe>
                </div>
             
                <!-- AddThis Button BEGIN -->
                <div class="addthis_toolbox addthis_default_style" style="float: right; padding-left: 10px;">
                    <a href="http://www.addthis.com/bookmark.php?v=250&amp;username=xa-4cbea8322984717d"
                        class="addthis_button_compact">Share</a> <span class="addthis_separator">|</span>
                    <a class="addthis_button_preferred_1"></a><a class="addthis_button_preferred_2">
                    </a><a class="addthis_button_preferred_3"></a><a class="addthis_button_preferred_4">
                    </a>
                </div>
                <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#username=xa-4cbea8322984717d"></script>
                <!-- AddThis Button END -->
            </td>
        </tr>
    </table>
    <div class="page_fullwidth">
        <table style="width: 100%">
            <tr>
                <td>
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                        <tr>
                            <td valign="top">
                                <table cellpadding="0" cellspacing="0" style="width: 100%">
                                    <tr>
                                        <td>
                                            <b>Summary</b>
                                        </td>
                                        <td>
                                            Checks the validity of email address in real-time
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>End Point</b>
                                        </td>
                                        <td>
                                            <a href="http://www.ezzylearning.com/services/EmailValidationService.asmx">http://www.ezzylearning.com/services/EmailValidationService.asmx</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Discovery File</b>
                                        </td>
                                        <td>
                                            <a href="http://www.ezzylearning.com/services/EmailValidationService.asmx?disco">http://www.ezzylearning.com/services/EmailValidationService.asmx?disco</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>WSDL File</b>
                                        </td>
                                        <td>
                                            <a href="http://www.ezzylearning.com/services/EmailValidationService.asmx?wsdl">http://www.ezzylearning.com/services/EmailValidationService.asmx?wsdl</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top;">
                                            <b>Methods</b>
                                        </td>
                                        <td>
                                            <ul>
                                                <li><a href="http://www.ezzylearning.com/services/EmailValidationService.asmx?op=ValidateEmail">
                                                    ValidateEmail </a>
                                                    <br />
                                                    Validate email address and return true or false
                                                    <br />
                                                    <br />
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <br />
                                &nbsp;<br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div id="ContentPlaceHolder1_divGoogleAd" style="text-align: center; padding-top: 25px;
            padding-bottom: 15px;">
            
<script type="text/javascript"><!--
    google_ad_client = "ca-pub-0567452692527423";
    /* EzzyLearning_Banner_300_250 */
    google_ad_slot = "9822764520";
    google_ad_width = 300;
    google_ad_height = 250;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
        </div>
        <br />

                    </div>
                    <div class="sidebar_wrapper">
                        <div class="social_profile">
                            <div class="profile">
                                <a id="HyperLink22" title="Become EzzyLearning Fan at Facebook" href="http://www.facebook.com/EzzyLearning" target="_blank"><img title="Become EzzyLearning Fan at Facebook" src="../images/ImagesNew/facebook.png" alt="Become EzzyLearning Fan at Facebook" /></a>
                            </div>
                            <div class="profile">
                                <a id="HyperLink21" title="Follow EzzyLearning at Twitter" href="https://twitter.com/ezzylearning" target="_blank"><img title="Follow EzzyLearning at Twitter" src="../images/ImagesNew/twitter.png" alt="Follow EzzyLearning at Twitter" /></a>
                            </div>
                            <div class="profile">
                                <a id="HyperLink26" title="Visit EzzyLearning Wordpress Blog" href="http://ezzylearning.wordpress.com" target="_blank"><img title="Visit EzzyLearning Wordpress Blog" src="../images/ImagesNew/wordpress.png" alt="Visit EzzyLearning Wordpress Blog" /></a>
                            </div>
                            <div class="profile">
                                <a id="HyperLink23" title="Visit EzzyLearning Blog" href="http://ezzylearning.blogspot.com" target="_blank"><img title="Visit EzzyLearning Blog" src="../images/ImagesNew/blogger.png" alt="Visit EzzyLearning Blog" /></a>
                            </div>
                            <div class="profile">
                                <a id="HyperLink1" title="Subscribe to EzzyLearning Tutorials" href="../subscribe.aspx"><img title="Subscribe to EzzyLearning Tutorials" src="../images/ImagesNew/feed.png" alt="Subscribe to EzzyLearning Tutorials" /></a>
                            </div>
                            <br class="clear" />
                        </div>
                        <div class="ads250_wrapper">
                              
<script type="text/javascript"><!--
    google_ad_client = "ca-pub-0567452692527423";
    /* EzzyLearning_Banner_250_250 */
    google_ad_slot = "6614917200";
    google_ad_width = 250;
    google_ad_height = 250;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>

                        </div>
                        <div class="sidebar">
                            <div class="content">
                                <ul class="sidebar_widget">
                                    <li id="custom_facebook_page-3" class="widget Custom_Facebook_Page">
                                        <h2 class="widgettitle">
                                            Find us on Facebook</h2>
                                      <iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fpages%2Fezzylearning%2F242852436071&amp;width=270&amp;height=258&amp;colorscheme=light&amp;show_faces=true&amp;border_color=%23ffffff&amp;stream=false&amp;header=false"
                                            scrolling="no" frameborder="0" style="border: none; overflow: hidden; width: 270px;
                                            height: 258px;" allowtransparency="true"></iframe> 
                                    </li>
                                    
                                    
                                    <li id="custom_popular_posts-3" class="widget Custom_Popular_Posts">
                                        <h2 class="widgettitle">
                                            Popular Posts</h2>
                                        
                                                <ul class="posts blog black_wrapper">
                                            
                                                <li>
                                                    <a id="rptPopularTutorials_HyperLink16_0" href="../technology.aspx?techid=1hg&amp;q=asp-net"><img id="rptPopularTutorials_imgPopular_0" class="alignleft frame" src="../images/ImagesNew/aspnet.png" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptPopularTutorials_linkHeading_0" href="../tutorial.aspx?tid=5864893&amp;q=using-parameters-with-objectdatasource-control">Using Parameters with ObjectDataSource Control</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        June 24, 2009
                                                    </span></li>
                                            
                                                <li>
                                                    <a id="rptPopularTutorials_HyperLink16_1" href="../technology.aspx?techid=1hg&amp;q=asp-net"><img id="rptPopularTutorials_imgPopular_1" class="alignleft frame" src="../images/ImagesNew/aspnet.png" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptPopularTutorials_linkHeading_1" href="../tutorial.aspx?tid=1993146&amp;q=editing-data-using-asp-net-gridview-control">Editing Data using ASP.NET GridView Control</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        April 11, 2009
                                                    </span></li>
                                            
                                                <li>
                                                    <a id="rptPopularTutorials_HyperLink16_2" href="../technology.aspx?techid=1hg&amp;q=asp-net"><img id="rptPopularTutorials_imgPopular_2" class="alignleft frame" src="../images/ImagesNew/aspnet.png" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptPopularTutorials_linkHeading_2" href="../tutorial.aspx?tid=9878983&amp;q=insert-records-using-objectdatasource-control">Insert Records using ObjectDataSource Control</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        June 27, 2009
                                                    </span></li>
                                            
                                                <li>
                                                    <a id="rptPopularTutorials_HyperLink16_3" href="../technology.aspx?techid=wTl&amp;q=jquery"><img id="rptPopularTutorials_imgPopular_3" class="alignleft frame" src="../images/ImagesNew/jquery.png" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptPopularTutorials_linkHeading_3" href="../tutorial.aspx?tid=7597714&amp;q=editing-asp-net-listview-control-using-jquery-ajax-and-web-services">Editing ASP.NET ListView Control using JQuery AJAX and Web Services</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        December 16, 2010
                                                    </span></li>
                                            
                                                <li>
                                                    <a id="rptPopularTutorials_HyperLink16_4" href="../technology.aspx?techid=aja&amp;q=ajax"><img id="rptPopularTutorials_imgPopular_4" class="alignleft frame" src="../images/ImagesNew/ajax.png" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptPopularTutorials_linkHeading_4" href="../tutorial.aspx?tid=3967791&amp;q=calling-web-services-in-client-script-using-asp-net-ajax">Calling Web Services in Client Script using ASP.NET AJAX</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        September 25, 2009
                                                    </span></li>
                                            
                                                </ul>
                                            
                                    </li>
                                    <li id="custom_popular_posts-4" class="widget Custom_Popular_Posts">
                                        <h2 class="widgettitle">
                                            Recent How TOs</h2>
                                        
                                                <ul class="posts blog black_wrapper">
                                            
                                                <li>
                                                    <a id="rptRecentHowTos_HyperLink16_0" href="../technology_howto.aspx?techid=wTl&amp;q=jquery"><img id="rptRecentHowTos_imgPopular_0" class="alignleft frame" src="../images/ImagesNew/jquery.png" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptRecentHowTos_linkHeading_0" href="../tutorial_howto.aspx?tid=9871399625&amp;q=how-to-change-iframe-source-using-jquery">How to Change IFrame Source using JQuery</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        November 14, 2012
                                                    </span></li>
                                            
                                                <li>
                                                    <a id="rptRecentHowTos_HyperLink16_1" href="../technology_howto.aspx?techid=5nX&amp;q=net-framework"><img id="rptRecentHowTos_imgPopular_1" class="alignleft frame" src="../images/ImagesNew/net_framework.png" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptRecentHowTos_linkHeading_1" href="../tutorial_howto.aspx?tid=6419319834&amp;q=how-to-set-files-as-read-only-in-net">How to Set Files as Read Only in .NET</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        August 29, 2012
                                                    </span></li>
                                            
                                                <li>
                                                    <a id="rptRecentHowTos_HyperLink16_2" href="../technology_howto.aspx?techid=5nX&amp;q=net-framework"><img id="rptRecentHowTos_imgPopular_2" class="alignleft frame" src="../images/ImagesNew/net_framework.png" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptRecentHowTos_linkHeading_2" href="../tutorial_howto.aspx?tid=4594587548&amp;q=how-to-get-domain-controllers-information-in-net">How to get Domain Controllers Information in .NET</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        August 29, 2012
                                                    </span></li>
                                            
                                                <li>
                                                    <a id="rptRecentHowTos_HyperLink16_3" href="../technology_howto.aspx?techid=5nX&amp;q=net-framework"><img id="rptRecentHowTos_imgPopular_3" class="alignleft frame" src="../images/ImagesNew/net_framework.png" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptRecentHowTos_linkHeading_3" href="../tutorial_howto.aspx?tid=3954249273&amp;q=how-to-check-validity-of-ip-address-in-net">How to Check Validity of IP Address in .NET</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        August 29, 2012
                                                    </span></li>
                                            
                                                <li>
                                                    <a id="rptRecentHowTos_HyperLink16_4" href="../technology_howto.aspx?techid=5nX&amp;q=net-framework"><img id="rptRecentHowTos_imgPopular_4" class="alignleft frame" src="../images/ImagesNew/net_framework.png" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptRecentHowTos_linkHeading_4" href="../tutorial_howto.aspx?tid=3732664642&amp;q=how-to-ping-an-ip-address-in-net">How to Ping an IP Address in .NET</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        August 29, 2012
                                                    </span></li>
                                            
                                                <li>
                                                    <a id="rptRecentHowTos_HyperLink16_5" href="../technology_howto.aspx?techid=5nX&amp;q=net-framework"><img id="rptRecentHowTos_imgPopular_5" class="alignleft frame" src="../images/ImagesNew/net_framework.png" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptRecentHowTos_linkHeading_5" href="../tutorial_howto.aspx?tid=9924497575&amp;q=how-to-create-conditional-method">How to Create Conditional method</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        August 29, 2012
                                                    </span></li>
                                            
                                                <li>
                                                    <a id="rptRecentHowTos_HyperLink16_6" href="../technology_howto.aspx?techid=5nX&amp;q=net-framework"><img id="rptRecentHowTos_imgPopular_6" class="alignleft frame" src="../images/ImagesNew/net_framework.png" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptRecentHowTos_linkHeading_6" href="../tutorial_howto.aspx?tid=1891241547&amp;q=how-to-create-breakpoint-programmically">How to Create Breakpoint programmically</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        August 29, 2012
                                                    </span></li>
                                            
                                                </ul>
                                            
                                    </li>
                                    <li id="custom_cat_posts-5" class="widget Custom_Cat_Posts">
                                        <h2 class="widgettitle">
                                            Recent Blog Posts</h2>
                                        
                                                <ul class="posts">
                                            
                                                <li>
                                                    <a id="rptRecentBlogPosts_HyperLink16_0" href="../post.aspx?id=94989441&amp;q=magnifier-js--magnifying-glass-effect-on-images"><img id="rptRecentBlogPosts_imgRecent_0" class="alignleft frame post_thumb" src="../Images/ImagesNew/blog_post.jpg" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptRecentBlogPosts_linkHeading_0" href="../post.aspx?id=94989441&amp;q=magnifier-js--magnifying-glass-effect-on-images">Magnifier.js – Magnifying Glass Effect on Images</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        February 25, 2014
                                                    </span></li>
                                            
                                                <li>
                                                    <a id="rptRecentBlogPosts_HyperLink16_1" href="../post.aspx?id=26172293&amp;q=light-table--a-new-interactive-ide-for-programming"><img id="rptRecentBlogPosts_imgRecent_1" class="alignleft frame post_thumb" src="../Images/ImagesNew/blog_post.jpg" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptRecentBlogPosts_linkHeading_1" href="../post.aspx?id=26172293&amp;q=light-table--a-new-interactive-ide-for-programming">Light Table – A New Interactive IDE for Programming</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        February 25, 2014
                                                    </span></li>
                                            
                                                <li>
                                                    <a id="rptRecentBlogPosts_HyperLink16_2" href="../post.aspx?id=65133267&amp;q=flexible-and-good-looking-share-button-jquery-plugin"><img id="rptRecentBlogPosts_imgRecent_2" class="alignleft frame post_thumb" src="../Images/ImagesNew/blog_post.jpg" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptRecentBlogPosts_linkHeading_2" href="../post.aspx?id=65133267&amp;q=flexible-and-good-looking-share-button-jquery-plugin">Flexible & Good-Looking Share Button jQuery Plugin</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        February 25, 2014
                                                    </span></li>
                                            
                                                <li>
                                                    <a id="rptRecentBlogPosts_HyperLink16_3" href="../post.aspx?id=76797891&amp;q=a-collection-of-css3-powered-hover-effects"><img id="rptRecentBlogPosts_imgRecent_3" class="alignleft frame post_thumb" src="../Images/ImagesNew/blog_post.jpg" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptRecentBlogPosts_linkHeading_3" href="../post.aspx?id=76797891&amp;q=a-collection-of-css3-powered-hover-effects">A Collection of CSS3 Powered Hover Effects</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        February 25, 2014
                                                    </span></li>
                                            
                                                <li>
                                                    <a id="rptRecentBlogPosts_HyperLink16_4" href="../post.aspx?id=25814817&amp;q=add-content-management-functionality-to-any-sites"><img id="rptRecentBlogPosts_imgRecent_4" class="alignleft frame post_thumb" src="../Images/ImagesNew/blog_post.jpg" style="border: 1px solid #dddddd;" /></a>
                                                    <strong class="title">
                                                        <a id="rptRecentBlogPosts_linkHeading_4" href="../post.aspx?id=25814817&amp;q=add-content-management-functionality-to-any-sites">Add Content Management Functionality to Any Sites</a>
                                                    </strong>
                                                    <br />
                                                    <span class="post_attribute">
                                                        February 11, 2014
                                                    </span></li>
                                            
                                                </ul>
                                            
                                        <br class="clear" />
                                    </li>
                                    <li id="tag_cloud-3" class="widget widget_tag_cloud">
                                        <h2 class="widgettitle">
                                            Tags</h2>
                                        <div class="tagcloud">
                                            <a class='weight1' href='../technology.aspx?techid=1hg&q=asp-net'>asp.net</a> <a class='weight5' href='../technology.aspx?techid=5nX&q=net-framework'>.net framework</a> <a class='weight4' href='../technology.aspx?techid=aja&q=ajax'>ajax</a> <a class='weight4' href='../technology.aspx?techid=AnD&q=android'>android</a> <a class='weight5' href='../technology.aspx?techid=fRk&q=visual-basic'>visual basic</a> <a class='weight5' href='../technology.aspx?techid=Gp4&q=java'>java</a> <a class='weight5' href='../technology.aspx?techid=izL&q=visual-csharp'>visual c#</a> <a class='weight5' href='../technology.aspx?techid=lnq&q=linq'>linq</a> <a class='weight5' href='../technology.aspx?techid=vpk&q=wcf'>wcf</a> <a class='weight4' href='../technology.aspx?techid=wTl&q=jquery'>jquery</a> <a class='weight5' href='../technology.aspx?techid=wtn&q=ado-net'>ado.net</a> 
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        
                        <br class="clear" />
                    </div>
                    <br class="clear" />
                </div>
                <!-- End main content -->
                
            </div>
        </div>
        <!-- Begin footer -->
        <div class="footer_wrapper">
            <div id="footer">
                <ul class="sidebar_widget">
                    
                    <li id="custom_recent_posts-7" class="widget Custom_Recent_Posts" style="width: 31%;">
                        <h2 class="widgettitle">
                            Website Links</h2>
                        <ul class="posts blog black_wrapper" style="margin-left: 0px; font-size: 10pt;">
                            <li>
                                <a id="HyperLink14" href="../codeconverter.aspx">.NET Framework Code Converter</a>
                            </li>
                            <li>
                                <a id="HyperLink15" href="../subscribe.aspx">Subscribe to RSS Feeds</a>
                            </li>
                        </ul>
                    </li>
                    <li id="custom_popular_posts-10" class="widget Custom_Popular_Posts">
                        <h2 class="widgettitle">
                            About</h2>
                        <ul class="posts blog black_wrapper" style="margin-left: 0px; font-size: 10pt;">
                            <li>
                                <a id="HyperLink5" href="../about.aspx">About EzzyLearning</a>
                            </li>
                           
                            
                        </ul>
                    </li>
                </ul>
                <br class="clear" />
            </div>
            <div id="copyright">
                <div id="copyright_left">
                    Copyright @ 2012 EzzyLearning.com
                </div>
                <div class="social_wrapper">
                    <ul>
                        <li>
                            <a id="HyperLink4" href="../subscribe.aspx"><img src="../images/ImagesNew/feed.png" alt="" /></a>
                        </li>
                        <li>
                            <a id="HyperLink8" href="http://ezzylearning.blogspot.com" target="_blank"><img src="../images/ImagesNew/blogger.png" alt="" /></a>
                        </li>
                        <li>
                            <a id="HyperLink9" href="http://ezzylearning.wordpress.com" target="_blank"><img src="../images/ImagesNew/wordpress.png" alt="" /></a>
                        </li>
                        <li>
                            <a id="HyperLink10" href="https://twitter.com/ezzylearning" target="_blank"><img src="../images/ImagesNew/twitter.png" alt="" /></a>
                        </li>
                        <li>
                            <a id="HyperLink11" href="http://www.facebook.com/EzzyLearning" target="_blank"><img src="../images/ImagesNew/facebook.png" alt="" /></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- End footer -->
    </div>
    <!-- End template wrapper -->
    </form>
    
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
    _uacct = "UA-726120-1";
    urchinTracker();
</script>

</body>
</html>
