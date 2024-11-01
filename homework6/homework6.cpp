#include <iostream>
#include <vector>
#include <array>
#include <list>
#include <memory>

class Time
{
   int hours = 0;
   int minutes = 0;
   int seconds = 0;
   static int obj_count;
public:
   Time() noexcept
   {
      obj_count += 1;
      std::cout << "new Time::object was constructed, current object count: " << obj_count << '\n';
   };
   Time(int h, int m, int s) : hours(h), minutes(m), seconds(s) 
   {  
      if(h >= 0 && m >= 0 && s >= 0 && h < 24 && m < 60 && s < 60)
      {
         obj_count += 1;
         std::cout << "new Time::object was constructed, current object count: " << obj_count << '\n';
      }
      else if (h < 0 || m < 0 || s < 0)
         throw std::string{"Time must be positive"};
      else if (h >= 24 || m >= 60 || s >= 60)
         throw std::string{"Incorrect time format"};
   }
   Time(const Time& other) noexcept
   {
      hours = other.hours;
      minutes = other.minutes;
      seconds = other.seconds;
      obj_count += 1;
      std::cout << "new Time::object was constructed, current object count: " << obj_count << '\n';
   }
   ~Time() noexcept
   {
      obj_count -= 1;
      std::cout << "Time::object was deleted, current object count: " << obj_count << '\n';
   }

   void SetHours(int hours) 
   {
      if (hours >= 24 || hours < 0)
         throw std::string{"Invalid argument for SetHours()"};
      this->hours = hours; 
   };
   void SetMinutes(int minutes)
   {
      if (minutes >= 24 || minutes < 0)
         throw std::string{"Invalid argument for SetMinutes()"};
      this->minutes = minutes; 
   };
   void SetSeconds(int);
   int GetHours() const noexcept { return hours; }
   int GetMinutes() const noexcept { return minutes; }
   int GetSeconds() const noexcept { return seconds; }
   int ToSeconds() const noexcept { 
      return hours*3600 + minutes*60 + seconds; 
   }

   Time& operator= (const Time& other) noexcept
   {
      this->hours = other.hours;
      minutes = other.minutes;
      seconds = other.seconds;
      return *this;
   }
   
   void PrintTime() noexcept
   {
      std::cout << "H:" << this->GetHours() << " M:" << this->GetMinutes() << " S:" << this->GetSeconds() << std::endl;
   }

   Time& operator += (int s) noexcept
   {
      seconds += s;
      Normalize();
      return *this;
   }

   Time& operator -=(int s) noexcept
   {
      seconds -= s;
      Normalize();
      return *this;
   }

   void Normalize() noexcept
   {
      int carry = 0;

      if (seconds < 0) {
         carry = (seconds / 60) - 1;
         seconds = 60 + (seconds % 60);
      } else {
         carry = seconds / 60;
         seconds = seconds % 60;
      }

      minutes += carry;
      carry = 0;
      if (minutes < 0) {
         carry = (minutes / 60) - 1;
         minutes = 60 + (minutes % 60);
      } else {
         carry = minutes / 60;
         minutes = minutes % 60;
      }

      hours += carry;
      hours = (hours + 24) % 24;
   }

};

int Time::obj_count = 0;

void Time::SetSeconds(int seconds)
{
   if (seconds >= 24 || seconds < 0)
      throw std::string{"Invalid argument for SetSeconds()"};
   this->seconds = seconds; 
}

Time operator + (const Time& t, int s) noexcept
{
   return Time(t.GetHours(), t.GetMinutes(), t.GetSeconds() + s);
}

bool operator == (const Time& t, const Time& other) noexcept
{
   return (t.GetHours()==other.GetHours() && t.GetMinutes() == other.GetMinutes() && t.GetSeconds() == other.GetSeconds());
}


Time operator - (const Time& t, int s) noexcept
{
   Time result(t.GetHours(), t.GetMinutes(), t.GetSeconds() - s);
   result.Normalize();
   return result;
}


std::ostream& operator << (std::ostream& out, const Time& t)
{
   out << t.GetHours() << ":" << t.GetMinutes() << ":" << t.GetSeconds();
   return out;
}

std::istream& operator >> (std::istream& in, Time& t)
{
   int h, m, s;
   char tmp;

   in >> h;
   in >> m;
   in >> s;

   t = Time(h, m, s);
   return in;
}

int main()
{
   // //------------------------task 6.1--------------------------------
   // //------------part a--------------
   // std::cout << "PART A" << std::endl;
   // Time* t = new Time(5,5,5);
   // t->PrintTime();
   // *t = Time(1,0,0);
   // t->PrintTime();
   // delete t;

   // Time* time_list = new Time[3] {Time(0,0,0), Time(1,1,1), Time(3,3,3)};
   // for (int i = 0; i < 3; i++)
   // {
   //    time_list[i].PrintTime();
   // }
   // delete[] time_list;

   // //------------part b----------------
   // std::cout << std::endl;
   // std::cout << std::endl;
   // std::cout << "PART B" << std::endl;
   // std::vector<Time> v1{Time(0,1,10), Time(23,23,23), Time(7,7,7)};
   // Time first = v1.front();
   // Time last = v1.back();
   // first.PrintTime();
   // last.PrintTime();
   // v1[1].PrintTime();

   // std::array<Time, 3> a1{Time(0,0,0), Time(1,1,1), Time(2,2,2)};
   // for (int i = 0; i < 3; i++)
   // {
   //    a1[i] += 2;
   //    a1[i].PrintTime();
   // }

   // std::list<Time> l1 {Time(0,0,0), Time(1,1,1), Time(2,2,2)};
   // for (Time tmp : l1)
   // {
   //    tmp -= 2;
   //    tmp.PrintTime();
   // }

   // //-------------part c------------------
   // std::cout << std::endl;
   // std::cout << std::endl;
   // std::cout << "PART C" << std::endl;
   // std::cout << "-----------unique_ptr" << std::endl;
   // std::unique_ptr<Time> time_ptr {std::make_unique<Time>(2,2,2)};
   // time_ptr->PrintTime();

   // std::cout << "-----------shared_ptr" << std::endl;
   // std::shared_ptr<Time> shared_time_ptr {std::make_shared<Time> (11,11,11)};
   // auto copy_ptr = shared_time_ptr;
   // copy_ptr->PrintTime();
   // *shared_time_ptr += 10;
   // copy_ptr->PrintTime();

   // std::cout << std::endl;
   // std::cout << std::endl;

   //------------------------task 6.2--------------------------------
   try
   {
      Time t(-1,-1,-1);
      t.PrintTime();
   }
   catch (const std::string& error_message)
   { std::cout << error_message << std::endl; }

   try
   {
      Time t(27, 80, 92);
      t.PrintTime();
   }
   catch (const std::string& error_message)
   { std::cout << error_message << std::endl; }

   try
   {
      Time t(20,15,0);
      t.PrintTime();
   }
   catch (const std::string& error_message)
   { std::cout << error_message << std::endl; }

   // call sethours/minutes/seconds with exeptions
   Time t;
   try
   {
      t.SetHours(-10);
   }
   catch (const std::string& error_message)
   { std::cout << error_message << std::endl; }

   try
   {
      t.SetMinutes(155);
   }
   catch (const std::string& error_message)
   { std::cout << error_message << std::endl; }

   try
   {
      t.SetSeconds(-9);
   }
   catch (const std::string& error_message)
   { std::cout << error_message << std::endl; }
}