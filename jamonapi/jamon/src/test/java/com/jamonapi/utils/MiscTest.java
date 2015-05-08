package com.jamonapi.utils;

import org.junit.Test;

import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Map;

import static org.assertj.core.api.Assertions.assertThat;


public class MiscTest {

    @Test
    public void testDateMethods() {
        GregorianCalendar cal=new GregorianCalendar(2013, 9, 1); // Tuesday Oct 1 2013

        // Get today's date
        Date date = cal.getTime();

        // examples using shorter functions
        assertThat(Misc.getMonth(date)).isEqualTo("10");
        assertThat(Misc.getShortDate(date)).isEqualTo("10/01/13");
        assertThat(Misc.getFormattedDate("dd-MMM-yy",date)).isEqualTo("01-Oct-13");
    }

    @SuppressWarnings("unchecked")
    @Test
    public void testCaseInsensitiveMap() {
        Map<String, String> m=Misc.createCaseInsensitiveMap();
        m.put("Steve", "SouzaOriginal");
        m.put("STEVE", "Souza");

        assertThat(m.size()).isEqualTo(1);
        assertThat(m.get("Steve")).isEqualTo("Souza");
        assertThat(m.get("StEvE")).isEqualTo("Souza");
        assertThat(m.get("steve")).isEqualTo("Souza");
        assertThat(m.get("STEVE")).isEqualTo("Souza");
    }

    @Test
    public void testArrayTrim() {
        String[] array={" a ", "b", " c", "d "};
        array = Misc.trim(array);
        assertThat(array[0]).isEqualTo("a");
        assertThat(array[1]).isEqualTo("b");
        assertThat(array[2]).isEqualTo("c");
        assertThat(array[3]).isEqualTo("d");
    }

}
