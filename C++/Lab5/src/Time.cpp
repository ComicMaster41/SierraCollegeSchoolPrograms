/*
 * Time.cpp
 */

#include "Time.h"
#include <ostream>


/**
 * @brief Construct a new Time:: Time object
 * 
 */
Time::Time() : hour(0), minute(0), second(0) {
}
/**
 * @brief Construct a new Time:: Time object
 * 
 * @param hour hour value
 * @param minute minute value
 * @param second second value
 */
Time::Time(unsigned int hour, unsigned int minute, unsigned int second) {
    if (hour < 24) {
        this->hour = hour;
    } else {
        this-> hour = 0;
    }
    if (minute < 60) {
        this->minute = minute;
    } else {
        this-> minute = 0;
    }
    if (second < 60) {
        this->second = second;
    } else {
        this-> second = 0;
    }
}

/**
 * @brief comparison operator
 * 
 * @param rhs 
 * @return true 
 * @return false 
 */
bool Time::operator ==(const Time &rhs) {
    return this->time_to_seconds() == rhs.time_to_seconds();
}

void Time::set_24Hour(bool display24) {
    this -> display24 = display24;
}

unsigned int Time::time_to_seconds() const {
     return second + (minute * 60) + (hour * 3600);
 }

/**
 * @brief output operator
 * 
 * @param os 
 * @param time 
 * @return std::ostream& 
 */
std::ostream& operator <<(std::ostream& os, const Time& time) {
    if (time.display24) {
        // output the 24 hour time
        os << time.hour << ":" << time.minute << ":" << time.second;
    } else {

        if (time.hour > 12) {
            os << time.hour-12 << ":" << time.minute << ":" << time.second << " PM";
        }

        else if (time.hour == 0) {
            os << time.hour+12 << ":" << time.minute << ":" << time.second << " AM";
        }

        else{
            os << time.hour << ":" << time.minute << ":" << time.second << " AM";
        }
    }
    
    return os;
}

/**
 * @brief  Private helper method to con vert the object's hour/minute/second to seconds
 * return unsigned int
 */

 

 unsigned int Time::get_hour() {
    return hour;
}

unsigned int Time::get_minute() {
    return minute;
}

unsigned int Time::get_second() {
    return second;
}

Time::~Time() {
    
}