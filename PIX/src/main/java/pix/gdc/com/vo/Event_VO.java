package pix.gdc.com.vo;

import java.util.ArrayList;
import java.util.List;

public class Event_VO {
	private String title;
    private String logo;
    private String main_image;
    private String event_date;
    private String event_long_description;
    private String event_short_description;

    private String info_info_pic;
    private String info_info_text;
    private String info_hist_pic;
    private String info_hist_text;
    private String info_program_pic;
    private String info_program_text;
    private String info_location_pic;
    private String info_location_text;
    private String info_contact_pic;
    private String info_contact_text;

    private List<Notice_VO> noticeList = new ArrayList<Notice_VO>();

    private List<String> q1_option = new ArrayList<String>();
    private List<String> q2_option = new ArrayList<String>();
    private List<String> q3_option = new ArrayList<String>();
    private List<String> q4_option = new ArrayList<String>();
    private List<String> q5_option = new ArrayList<String>();

    private List<String> questions  = new ArrayList<String>();

    private String q1_img;
    private String q2_img;
    private String q3_img;
    private String q4_img;
    private String q5_img;
    private String q6_img;
    private String q7_img;
    private String q_coupon_img;
    private String q_coupon_txt = "";
    private String q_coupon_txt2 = "";
    private String q_coupon_txt3 = "";

    private String q_graphic = "";

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getMain_image() {
        return main_image;
    }

    public void setMain_image(String main_image) {
        this.main_image = main_image;
    }

    public String getEvent_date() {
        return event_date;
    }

    public void setEvent_date(String event_date) {
        this.event_date = event_date;
    }

    public String getEvent_long_description() {
        return event_long_description;
    }

    public void setEvent_long_description(String event_long_description) {
        this.event_long_description = event_long_description;
    }

    public String getEvent_short_description() {
        return event_short_description;
    }

    public void setEvent_short_description(String event_short_description) {
        this.event_short_description = event_short_description;
    }


    public String getInfo_info_pic() {
        return info_info_pic;
    }

    public void setInfo_info_pic(String info_info_pic) {
        this.info_info_pic = info_info_pic;
    }

    public String getInfo_info_text() {
        return info_info_text;
    }

    public void setInfo_info_text(String info_info_text) {
        this.info_info_text = info_info_text;
    }

    public String getInfo_hist_pic() {
        return info_hist_pic;
    }

    public void setInfo_hist_pic(String info_hist_pic) {
        this.info_hist_pic = info_hist_pic;
    }

    public String getInfo_hist_text() {
        return info_hist_text;
    }

    public void setInfo_hist_text(String info_hist_text) {
        this.info_hist_text = info_hist_text;
    }

    public String getInfo_program_pic() {
        return info_program_pic;
    }

    public void setInfo_program_pic(String info_program_pic) {
        this.info_program_pic = info_program_pic;
    }

    public String getInfo_program_text() {
        return info_program_text;
    }

    public void setInfo_program_text(String info_program_text) {
        this.info_program_text = info_program_text;
    }

    public String getInfo_location_pic() {
        return info_location_pic;
    }

    public void setInfo_location_pic(String info_location_pic) {
        this.info_location_pic = info_location_pic;
    }

    public String getInfo_location_text() {
        return info_location_text;
    }

    public void setInfo_location_text(String info_location_text) {
        this.info_location_text = info_location_text;
    }

    public String getInfo_contact_pic() {
        return info_contact_pic;
    }

    public void setInfo_contact_pic(String info_contact_pic) {
        this.info_contact_pic = info_contact_pic;
    }

    public String getInfo_contact_text() {
        return info_contact_text;
    }

    public void setInfo_contact_text(String info_contact_text) {
        this.info_contact_text = info_contact_text;
    }

    public List<Notice_VO> getNoticeList() {
        return noticeList;
    }

    public void setNoticeList(List<Notice_VO> noticeList) {
        this.noticeList = noticeList;
    }


    public List<String> getQ1_option() {
        return q1_option;
    }

    public void setQ1_option(List<String> q1_option) {
        this.q1_option = q1_option;
    }

    public List<String> getQ2_option() {
        return q2_option;
    }

    public void setQ2_option(List<String> q2_option) {
        this.q2_option = q2_option;
    }

    public List<String> getQ3_option() {
        return q3_option;
    }

    public void setQ3_option(List<String> q3_option) {
        this.q3_option = q3_option;
    }

    public List<String> getQ4_option() {
        return q4_option;
    }

    public void setQ4_option(List<String> q4_option) {
        this.q4_option = q4_option;
    }

    public List<String> getQ5_option() {
        return q5_option;
    }

    public void setQ5_option(List<String> q5_option) {
        this.q5_option = q5_option;
    }

    public List<String> getQuestions() {
        return questions;
    }

    public void setQuestions(List<String> questions) {
        this.questions = questions;
    }


    public String getQ1_img() {
        return q1_img;
    }

    public void setQ1_img(String q1_img) {
        this.q1_img = q1_img;
    }

    public String getQ2_img() {
        return q2_img;
    }

    public void setQ2_img(String q2_img) {
        this.q2_img = q2_img;
    }

    public String getQ3_img() {
        return q3_img;
    }

    public void setQ3_img(String q3_img) {
        this.q3_img = q3_img;
    }

    public String getQ4_img() {
        return q4_img;
    }

    public void setQ4_img(String q4_img) {
        this.q4_img = q4_img;
    }

    public String getQ5_img() {
        return q5_img;
    }

    public void setQ5_img(String q5_img) {
        this.q5_img = q5_img;
    }

    public String getQ6_img() {
        return q6_img;
    }

    public void setQ6_img(String q6_img) {
        this.q6_img = q6_img;
    }

    public String getQ7_img() {
        return q7_img;
    }

    public void setQ7_img(String q7_img) {
        this.q7_img = q7_img;
    }

    public String getQ_coupon_img() {
        return q_coupon_img;
    }

    public void setQ_coupon_img(String q_coupon_img) {
        this.q_coupon_img = q_coupon_img;
    }


    public String getQ_coupon_txt() {
        return q_coupon_txt;
    }

    public void setQ_coupon_txt(String q_coupon_txt) {
        this.q_coupon_txt = q_coupon_txt;
    }

    public String getQ_graphic() {
        return q_graphic;
    }

    public void setQ_graphic(String q_graphic) {
        this.q_graphic = q_graphic;
    }

    public String getQ_coupon_txt2() {
        return q_coupon_txt2;
    }

    public void setQ_coupon_txt2(String q_coupon_txt2) {
        this.q_coupon_txt2 = q_coupon_txt2;
    }

    public String getQ_coupon_txt3() {
        return q_coupon_txt3;
    }

    public void setQ_coupon_txt3(String q_coupon_txt3) {
        this.q_coupon_txt3 = q_coupon_txt3;
    }

}
