/**
 * Time.h
 */

#ifndef TIME_H_
#define TIME_H_

#include <iostream>

class Time {
public:
    /**
     * Default constructor. Sets time to zero
     */
    Time();

    /**
     * Constructor
     */
    Time(unsigned int hour, unsigned int minute, unsigned int second);

    /**
     * Destructor
     */
    virtual ~Time();

    /**
     * @return hour
     */
    unsigned int get_hour();

    /**
     * @return minute
     */
    unsigned int get_minute();

    /**
     * @return second
     */
    unsigned int get_second();

    /**
     * Set the time display to show a 24 hour
     */
    void set_24Hour(bool display24);

    /**
     * Output time as hh:mm:ss as a 24 hour time to the output stream if the 24 hour flag is true, else
     * if the 24 hour flag is false output the time as hh:mm:ss AM or PM as a 12 hour time.
     */
    friend std::ostream& operator <<(std::ostream&, const Time&);

    /**
     * Declare comparison relationships
     */
    bool operator ==(const Time &rhs);

private:

    /**
     * @brief Private helper method to convert the object's hour/minute/second to seconds
     *
     * @return unsigned int
     */
    unsigned int time_to_seconds() const;

    /**
     * Private variables
     */
    bool display24 = true;
    unsigned int hour;
    unsigned int minute;
    unsigned int second;
};

#endif /* TIME_H_ */
