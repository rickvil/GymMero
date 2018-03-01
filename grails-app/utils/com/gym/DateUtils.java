package com.gym;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class DateUtils {

    public static final SimpleDateFormat ddMMyyyyHHmmss = new SimpleDateFormat("ddMMyyyyHHmmss");
    public static final SimpleDateFormat yyyyMMddHHmmss = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    public static final SimpleDateFormat yyyyMMdd = new SimpleDateFormat("yyyy-MM-dd");
    public static final SimpleDateFormat yyyyMM = new SimpleDateFormat("yyyy-MM");
    public static final SimpleDateFormat ddMMyyyy = new SimpleDateFormat("ddMMyyyy");

    public static final SimpleDateFormat ddMMyyyySeparatedBySlash = new SimpleDateFormat("dd/MM/yyyy");
    public static final SimpleDateFormat MMMMyyyy = new SimpleDateFormat("MMMM-yyyy");
    public static final Long DAY_IN_MILLIS = 1000l * 60 * 60 * 24;

    public enum PERIOD {
        YEAR,
        MONTH,
        WEEK,
        DAY,
        HOUR
    }

    public static long daysBetween(Calendar startDate, Calendar endDate) {

        Calendar date = (Calendar) startDate.clone();
        long daysBetween = 0;

        while (date.before(endDate)) {
            date.add(Calendar.DAY_OF_MONTH, 1);
            daysBetween++;
        }

        return daysBetween;

    }


    public static long daysBetween(Date start, Date end) {

        Calendar date = Calendar.getInstance();
        date.setTime(start);

        Calendar endDate = Calendar.getInstance();
        endDate.setTime(end);

        long daysBetween = 0;
        while (date.before(endDate)) {
            date.add(Calendar.DAY_OF_MONTH, 1);
            daysBetween++;
        }

        return daysBetween;

    }


    public static Date toDate(String fechaStr, SimpleDateFormat sdf) {

        try {

            return sdf.parse(fechaStr);

        } catch (Exception e) {

            e.printStackTrace();

            return null;
        }
    }

    public static Boolean isBirthdayNow(Date date){
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.setTime(date);
        int monthBirthday = calendar.get(Calendar.MONTH);
        int dayBirthday = calendar.get(Calendar.DATE);

        Calendar calendarNow = Calendar.getInstance();
        calendarNow.clear();
        calendarNow.setTime(new Date());
        int monthNow = calendarNow.get(Calendar.MONTH);
        int dayNow = calendarNow.get(Calendar.DATE);

        return (monthBirthday == monthNow && dayBirthday == dayNow);
    }

    public static Date nowDateTrimeTime(){
        return trimTime(new Date());
    }

    public static Date trimTime(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.clear();
        cal.setTime(date);
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.SECOND, 0);
        cal.set(Calendar.MILLISECOND, 0);
        return cal.getTime();
    }

    public static Date min(Date date1, Date date2) {
        return date1.getTime() < date2.getTime() ? date1 : date2;
    }

    public static Date endOfTheDay(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.clear();
        cal.setTime(date);
        cal.set(Calendar.HOUR_OF_DAY, 23);
        cal.set(Calendar.MINUTE, 59);
        cal.set(Calendar.SECOND, 59);
        cal.set(Calendar.MILLISECOND, 999);
        return cal.getTime();
    }

    public static Date getFecha(String fecha, SimpleDateFormat sdft) {

        if (!fecha.equals("")) {

            Calendar cal = new GregorianCalendar();
            setFecha(fecha, cal, sdft);

            return cal.getTime();

        } else {

            return null;

        }
    }


    public static void setFecha(String fecha, Calendar cal, SimpleDateFormat sdf) {

        try {

            cal.setTime(sdf.parse(fecha));

        } catch (Exception e) {

            e.printStackTrace();

        }
    }


    public static Date getFirstDayOfCurrentMonth() {
        Calendar calendar = Calendar.getInstance();
        int month = calendar.get(Calendar.MONTH);
        int year = calendar.get(Calendar.YEAR);
        calendar.clear();
        calendar.set(Calendar.YEAR, year);
        calendar.set(Calendar.MONTH, month);
        return calendar.getTime();
    }

    public static Calendar getDateTimeFrom(Calendar from, PERIOD period, int times, int addTime) {
        if (period == PERIOD.YEAR) {
            from.add(Calendar.YEAR, (addTime) * times);

        } else if (period == PERIOD.MONTH) {
            from.add(Calendar.MONTH, (addTime) * times);

        } else if (period == PERIOD.WEEK) {
            from.add(Calendar.WEEK_OF_YEAR, (addTime) * times);

        } else if (period == PERIOD.DAY) {
            from.add(Calendar.DAY_OF_YEAR, (addTime) * times);

        } else if (period == PERIOD.HOUR) {
            from.add(Calendar.HOUR_OF_DAY, (addTime) * times);

        }

        return from;
    }

    /**
     * Adds Time
     */
    public static Calendar getDateTimeAddFrom(Calendar from, PERIOD period, int times) {
        return getDateTimeFrom(from, period, times, 1);
    }

    /**
     * Subtrats Time
     */
    public static Calendar getDateTimeAgoFrom(Calendar from, PERIOD period, int times) {
        return getDateTimeFrom(from, period, times, -1);
    }

    public static Calendar getDateYearAgoFrom(Calendar from, int times) {
        return getDateTimeAgoFrom(from, PERIOD.YEAR, times);
    }

    public static Calendar getDateYearAgoFrom(Calendar from) {
        return getDateYearAgoFrom(from, 1);
    }

    public static Calendar getDateMonthAgoFrom(Calendar from, int times) {
        return getDateTimeAgoFrom(from, PERIOD.MONTH, times);
    }

    public static Calendar getDateMonthAgoFrom(Calendar from) {
        return getDateMonthAgoFrom(from, 1);
    }

    public static Calendar getDateWeekAgoFrom(Calendar from, int times) {
        return getDateTimeAgoFrom(from, PERIOD.WEEK, times);
    }

    public static Calendar getDateWeekAgoFrom(Calendar from) {
        return getDateWeekAgoFrom(from, 1);
    }

    public static Calendar getDateDayAgoFrom(Calendar from, int times) {
        return getDateTimeAgoFrom(from, PERIOD.DAY, times);
    }

    public static Calendar getDateDayAgoFrom(Calendar from) {
        return getDateDayAgoFrom(from, 1);
    }

    public static Calendar getDateHourAgoFrom(Calendar from, int times) {
        return getDateTimeAgoFrom(from, PERIOD.HOUR, times);
    }

    public static Calendar getDateHourAgoFrom(Calendar from) {
        return getDateHourAgoFrom(from, 1);
    }

}
