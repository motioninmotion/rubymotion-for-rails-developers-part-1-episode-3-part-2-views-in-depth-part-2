class MainViewController < UIViewController
  def loadView
    self.view = TasksView.new
    view.button.addTarget(self, action: :add_task, forControlEvents: UIControlEventTouchUpInside)
  end

  def viewDidLoad
    self.title = "Tasks"
    @task = Task.new
  end

  def viewWillAppear(animated)
    view.label.text = @task.title
  end

  def add_task
    UIAlertView.alloc.initWithTitle(
      "Hello World!",
      message: "I hope you have a nice day.",
      delegate: nil,
      cancelButtonTitle: "NO!",
      otherButtonTitles: "Thank you", nil
    ).show

    #vc = AddTaskViewController.new
    #vc.task = @task
    #navigationController.pushViewController(vc, animated: true)
  end
end
