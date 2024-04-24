function(input, output) {
  messageData <- data.frame(from = c("Finance", "Accounting", "HR"),
                            message = c("Revenge is up", "Budget meeting this friday", "Donuts in the breakroom")
                            )
  output$messageMenu <- renderMenu(({
    msg <- apply(messageData, 1, function(row){
      messageItem(from = row[['from']], message = row[["message"]])
    })
    dropdownMenu(type = "messages", .list = msg)
  }))
}