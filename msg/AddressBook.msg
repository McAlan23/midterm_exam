bool FEMALE=true
bool MALE=false

string first_name
string last_name
bool gender
uint8 age
string address

using namespace std::chrono_literals;

class AddressBookPublisher : public rclcpp::Node
{
public:
  AddressBookPublisher()
  : Node("address_book_publisher")
  {
    address_book_publisher_ =
      this->create_publisher<more_interfaces::msg::AddressBook>("address_book");
auto publish_msg = [this]() -> void {
auto message = more_interfaces::msg::AddressBook();
std::cout << "Publishing Contact\nFirst:" << message.first_name <<
  "  Last:" << message.last_name << std::endl;

this->address_book_publisher_->publish(message);
timer_ = this->create_wall_timer(1s, publish_msg);
