dashboardPage(
  dashboardHeader(title = "Dashboard Header",
                  dropdownMenu(type = "messages",
                               messageItem(from = "Mike", message = "This is a test message")
                               ),
                  dropdownMenuOutput(outputId = "messageMenu"),
                  dropdownMenu(type = "notifications",
                               notificationItem(text = "This is a test notification")
                               ),
                  dropdownMenu(type = "tasks",
                               taskItem(text = "This is a test task", value = 50)
                  )
),
dashboardSidebar(),
dashboardBody()
)