class MainViewController < UIViewController
  def loadView
    self.view = TasksView.new
    view.button.addTarget(self, action: :add_task, forControlEvents: UIControlEventTouchUpInside)
  end

  def viewDidLoad
    self.title = "Tasks"
    @task = Task.new
  end

  def viewWillAppear(_)
    view.label.text = @task.title
  end

  def add_task
    alert = UIAlertController.alertControllerWithTitle('Hello World!',
                                                       message: 'I hope you have a nice day.',
                                                       preferredStyle: UIAlertControllerStyleAlert)
    no     = UIAlertAction.actionWithTitle('NO!',       style: UIAlertActionStyleCancel,  handler: nil)
    thanks = UIAlertAction.actionWithTitle('Thank you', style: UIAlertActionStyleDefault, handler: nil)
    alert.addAction(no)
    alert.addAction(thanks)
    self.presentViewController(alert, animated: true, completion: nil)

    #vc = AddTaskViewController.new
    #vc.task = @task
    #navigationController.pushViewController(vc, animated: true)
  end
end
