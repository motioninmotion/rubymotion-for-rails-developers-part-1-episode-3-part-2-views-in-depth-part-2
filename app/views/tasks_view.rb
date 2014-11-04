class TasksView < UIView
  attr_reader :button, :label

  def init
    super

    self.backgroundColor = UIColor.whiteColor

    @button = UIButton.new
    @button.setTitle("Add Task", forState: UIControlStateNormal)
    @button.setTitleColor(UIColor.blueColor, forState: UIControlStateNormal)
    @button.frame = [[20, 100], [280, 30]]
    addSubview(@button)

    @label = UILabel.new
    @label.frame = [[20, 150], [280, 30]]
    addSubview(@label)

    image = UIImage.imageNamed("slide")
    image_view = UIImageView.new
    image_view.frame = [[50, 200], [220, 220]]
    image_view.backgroundColor = UIColor.lightGrayColor
    image_view.image = image
    image_view.contentMode = UIViewContentModeScaleAspectFit
    addSubview(image_view)

    self
  end
end
