package com.jiaogai.pojo;

import java.util.ArrayList;
import java.util.List;

public class TeacherExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TeacherExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andTNameIsNull() {
            addCriterion("t_name is null");
            return (Criteria) this;
        }

        public Criteria andTNameIsNotNull() {
            addCriterion("t_name is not null");
            return (Criteria) this;
        }

        public Criteria andTNameEqualTo(String value) {
            addCriterion("t_name =", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameNotEqualTo(String value) {
            addCriterion("t_name <>", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameGreaterThan(String value) {
            addCriterion("t_name >", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameGreaterThanOrEqualTo(String value) {
            addCriterion("t_name >=", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameLessThan(String value) {
            addCriterion("t_name <", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameLessThanOrEqualTo(String value) {
            addCriterion("t_name <=", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameLike(String value) {
            addCriterion("t_name like", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameNotLike(String value) {
            addCriterion("t_name not like", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameIn(List<String> values) {
            addCriterion("t_name in", values, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameNotIn(List<String> values) {
            addCriterion("t_name not in", values, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameBetween(String value1, String value2) {
            addCriterion("t_name between", value1, value2, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameNotBetween(String value1, String value2) {
            addCriterion("t_name not between", value1, value2, "tName");
            return (Criteria) this;
        }

        public Criteria andTSexIsNull() {
            addCriterion("t_sex is null");
            return (Criteria) this;
        }

        public Criteria andTSexIsNotNull() {
            addCriterion("t_sex is not null");
            return (Criteria) this;
        }

        public Criteria andTSexEqualTo(String value) {
            addCriterion("t_sex =", value, "tSex");
            return (Criteria) this;
        }

        public Criteria andTSexNotEqualTo(String value) {
            addCriterion("t_sex <>", value, "tSex");
            return (Criteria) this;
        }

        public Criteria andTSexGreaterThan(String value) {
            addCriterion("t_sex >", value, "tSex");
            return (Criteria) this;
        }

        public Criteria andTSexGreaterThanOrEqualTo(String value) {
            addCriterion("t_sex >=", value, "tSex");
            return (Criteria) this;
        }

        public Criteria andTSexLessThan(String value) {
            addCriterion("t_sex <", value, "tSex");
            return (Criteria) this;
        }

        public Criteria andTSexLessThanOrEqualTo(String value) {
            addCriterion("t_sex <=", value, "tSex");
            return (Criteria) this;
        }

        public Criteria andTSexLike(String value) {
            addCriterion("t_sex like", value, "tSex");
            return (Criteria) this;
        }

        public Criteria andTSexNotLike(String value) {
            addCriterion("t_sex not like", value, "tSex");
            return (Criteria) this;
        }

        public Criteria andTSexIn(List<String> values) {
            addCriterion("t_sex in", values, "tSex");
            return (Criteria) this;
        }

        public Criteria andTSexNotIn(List<String> values) {
            addCriterion("t_sex not in", values, "tSex");
            return (Criteria) this;
        }

        public Criteria andTSexBetween(String value1, String value2) {
            addCriterion("t_sex between", value1, value2, "tSex");
            return (Criteria) this;
        }

        public Criteria andTSexNotBetween(String value1, String value2) {
            addCriterion("t_sex not between", value1, value2, "tSex");
            return (Criteria) this;
        }

        public Criteria andTAgeIsNull() {
            addCriterion("t_age is null");
            return (Criteria) this;
        }

        public Criteria andTAgeIsNotNull() {
            addCriterion("t_age is not null");
            return (Criteria) this;
        }

        public Criteria andTAgeEqualTo(Integer value) {
            addCriterion("t_age =", value, "tAge");
            return (Criteria) this;
        }

        public Criteria andTAgeNotEqualTo(Integer value) {
            addCriterion("t_age <>", value, "tAge");
            return (Criteria) this;
        }

        public Criteria andTAgeGreaterThan(Integer value) {
            addCriterion("t_age >", value, "tAge");
            return (Criteria) this;
        }

        public Criteria andTAgeGreaterThanOrEqualTo(Integer value) {
            addCriterion("t_age >=", value, "tAge");
            return (Criteria) this;
        }

        public Criteria andTAgeLessThan(Integer value) {
            addCriterion("t_age <", value, "tAge");
            return (Criteria) this;
        }

        public Criteria andTAgeLessThanOrEqualTo(Integer value) {
            addCriterion("t_age <=", value, "tAge");
            return (Criteria) this;
        }

        public Criteria andTAgeIn(List<Integer> values) {
            addCriterion("t_age in", values, "tAge");
            return (Criteria) this;
        }

        public Criteria andTAgeNotIn(List<Integer> values) {
            addCriterion("t_age not in", values, "tAge");
            return (Criteria) this;
        }

        public Criteria andTAgeBetween(Integer value1, Integer value2) {
            addCriterion("t_age between", value1, value2, "tAge");
            return (Criteria) this;
        }

        public Criteria andTAgeNotBetween(Integer value1, Integer value2) {
            addCriterion("t_age not between", value1, value2, "tAge");
            return (Criteria) this;
        }

        public Criteria andTBirthdayIsNull() {
            addCriterion("t_birthday is null");
            return (Criteria) this;
        }

        public Criteria andTBirthdayIsNotNull() {
            addCriterion("t_birthday is not null");
            return (Criteria) this;
        }

        public Criteria andTBirthdayEqualTo(String value) {
            addCriterion("t_birthday =", value, "tBirthday");
            return (Criteria) this;
        }

        public Criteria andTBirthdayNotEqualTo(String value) {
            addCriterion("t_birthday <>", value, "tBirthday");
            return (Criteria) this;
        }

        public Criteria andTBirthdayGreaterThan(String value) {
            addCriterion("t_birthday >", value, "tBirthday");
            return (Criteria) this;
        }

        public Criteria andTBirthdayGreaterThanOrEqualTo(String value) {
            addCriterion("t_birthday >=", value, "tBirthday");
            return (Criteria) this;
        }

        public Criteria andTBirthdayLessThan(String value) {
            addCriterion("t_birthday <", value, "tBirthday");
            return (Criteria) this;
        }

        public Criteria andTBirthdayLessThanOrEqualTo(String value) {
            addCriterion("t_birthday <=", value, "tBirthday");
            return (Criteria) this;
        }

        public Criteria andTBirthdayLike(String value) {
            addCriterion("t_birthday like", value, "tBirthday");
            return (Criteria) this;
        }

        public Criteria andTBirthdayNotLike(String value) {
            addCriterion("t_birthday not like", value, "tBirthday");
            return (Criteria) this;
        }

        public Criteria andTBirthdayIn(List<String> values) {
            addCriterion("t_birthday in", values, "tBirthday");
            return (Criteria) this;
        }

        public Criteria andTBirthdayNotIn(List<String> values) {
            addCriterion("t_birthday not in", values, "tBirthday");
            return (Criteria) this;
        }

        public Criteria andTBirthdayBetween(String value1, String value2) {
            addCriterion("t_birthday between", value1, value2, "tBirthday");
            return (Criteria) this;
        }

        public Criteria andTBirthdayNotBetween(String value1, String value2) {
            addCriterion("t_birthday not between", value1, value2, "tBirthday");
            return (Criteria) this;
        }

        public Criteria andTQqIsNull() {
            addCriterion("t_qq is null");
            return (Criteria) this;
        }

        public Criteria andTQqIsNotNull() {
            addCriterion("t_qq is not null");
            return (Criteria) this;
        }

        public Criteria andTQqEqualTo(String value) {
            addCriterion("t_qq =", value, "tQq");
            return (Criteria) this;
        }

        public Criteria andTQqNotEqualTo(String value) {
            addCriterion("t_qq <>", value, "tQq");
            return (Criteria) this;
        }

        public Criteria andTQqGreaterThan(String value) {
            addCriterion("t_qq >", value, "tQq");
            return (Criteria) this;
        }

        public Criteria andTQqGreaterThanOrEqualTo(String value) {
            addCriterion("t_qq >=", value, "tQq");
            return (Criteria) this;
        }

        public Criteria andTQqLessThan(String value) {
            addCriterion("t_qq <", value, "tQq");
            return (Criteria) this;
        }

        public Criteria andTQqLessThanOrEqualTo(String value) {
            addCriterion("t_qq <=", value, "tQq");
            return (Criteria) this;
        }

        public Criteria andTQqLike(String value) {
            addCriterion("t_qq like", value, "tQq");
            return (Criteria) this;
        }

        public Criteria andTQqNotLike(String value) {
            addCriterion("t_qq not like", value, "tQq");
            return (Criteria) this;
        }

        public Criteria andTQqIn(List<String> values) {
            addCriterion("t_qq in", values, "tQq");
            return (Criteria) this;
        }

        public Criteria andTQqNotIn(List<String> values) {
            addCriterion("t_qq not in", values, "tQq");
            return (Criteria) this;
        }

        public Criteria andTQqBetween(String value1, String value2) {
            addCriterion("t_qq between", value1, value2, "tQq");
            return (Criteria) this;
        }

        public Criteria andTQqNotBetween(String value1, String value2) {
            addCriterion("t_qq not between", value1, value2, "tQq");
            return (Criteria) this;
        }

        public Criteria andTTelIsNull() {
            addCriterion("t_tel is null");
            return (Criteria) this;
        }

        public Criteria andTTelIsNotNull() {
            addCriterion("t_tel is not null");
            return (Criteria) this;
        }

        public Criteria andTTelEqualTo(String value) {
            addCriterion("t_tel =", value, "tTel");
            return (Criteria) this;
        }

        public Criteria andTTelNotEqualTo(String value) {
            addCriterion("t_tel <>", value, "tTel");
            return (Criteria) this;
        }

        public Criteria andTTelGreaterThan(String value) {
            addCriterion("t_tel >", value, "tTel");
            return (Criteria) this;
        }

        public Criteria andTTelGreaterThanOrEqualTo(String value) {
            addCriterion("t_tel >=", value, "tTel");
            return (Criteria) this;
        }

        public Criteria andTTelLessThan(String value) {
            addCriterion("t_tel <", value, "tTel");
            return (Criteria) this;
        }

        public Criteria andTTelLessThanOrEqualTo(String value) {
            addCriterion("t_tel <=", value, "tTel");
            return (Criteria) this;
        }

        public Criteria andTTelLike(String value) {
            addCriterion("t_tel like", value, "tTel");
            return (Criteria) this;
        }

        public Criteria andTTelNotLike(String value) {
            addCriterion("t_tel not like", value, "tTel");
            return (Criteria) this;
        }

        public Criteria andTTelIn(List<String> values) {
            addCriterion("t_tel in", values, "tTel");
            return (Criteria) this;
        }

        public Criteria andTTelNotIn(List<String> values) {
            addCriterion("t_tel not in", values, "tTel");
            return (Criteria) this;
        }

        public Criteria andTTelBetween(String value1, String value2) {
            addCriterion("t_tel between", value1, value2, "tTel");
            return (Criteria) this;
        }

        public Criteria andTTelNotBetween(String value1, String value2) {
            addCriterion("t_tel not between", value1, value2, "tTel");
            return (Criteria) this;
        }

        public Criteria andTEmailIsNull() {
            addCriterion("t_email is null");
            return (Criteria) this;
        }

        public Criteria andTEmailIsNotNull() {
            addCriterion("t_email is not null");
            return (Criteria) this;
        }

        public Criteria andTEmailEqualTo(String value) {
            addCriterion("t_email =", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailNotEqualTo(String value) {
            addCriterion("t_email <>", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailGreaterThan(String value) {
            addCriterion("t_email >", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailGreaterThanOrEqualTo(String value) {
            addCriterion("t_email >=", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailLessThan(String value) {
            addCriterion("t_email <", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailLessThanOrEqualTo(String value) {
            addCriterion("t_email <=", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailLike(String value) {
            addCriterion("t_email like", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailNotLike(String value) {
            addCriterion("t_email not like", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailIn(List<String> values) {
            addCriterion("t_email in", values, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailNotIn(List<String> values) {
            addCriterion("t_email not in", values, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailBetween(String value1, String value2) {
            addCriterion("t_email between", value1, value2, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailNotBetween(String value1, String value2) {
            addCriterion("t_email not between", value1, value2, "tEmail");
            return (Criteria) this;
        }

        public Criteria andIdNumberIsNull() {
            addCriterion("id_number is null");
            return (Criteria) this;
        }

        public Criteria andIdNumberIsNotNull() {
            addCriterion("id_number is not null");
            return (Criteria) this;
        }

        public Criteria andIdNumberEqualTo(String value) {
            addCriterion("id_number =", value, "idNumber");
            return (Criteria) this;
        }

        public Criteria andIdNumberNotEqualTo(String value) {
            addCriterion("id_number <>", value, "idNumber");
            return (Criteria) this;
        }

        public Criteria andIdNumberGreaterThan(String value) {
            addCriterion("id_number >", value, "idNumber");
            return (Criteria) this;
        }

        public Criteria andIdNumberGreaterThanOrEqualTo(String value) {
            addCriterion("id_number >=", value, "idNumber");
            return (Criteria) this;
        }

        public Criteria andIdNumberLessThan(String value) {
            addCriterion("id_number <", value, "idNumber");
            return (Criteria) this;
        }

        public Criteria andIdNumberLessThanOrEqualTo(String value) {
            addCriterion("id_number <=", value, "idNumber");
            return (Criteria) this;
        }

        public Criteria andIdNumberLike(String value) {
            addCriterion("id_number like", value, "idNumber");
            return (Criteria) this;
        }

        public Criteria andIdNumberNotLike(String value) {
            addCriterion("id_number not like", value, "idNumber");
            return (Criteria) this;
        }

        public Criteria andIdNumberIn(List<String> values) {
            addCriterion("id_number in", values, "idNumber");
            return (Criteria) this;
        }

        public Criteria andIdNumberNotIn(List<String> values) {
            addCriterion("id_number not in", values, "idNumber");
            return (Criteria) this;
        }

        public Criteria andIdNumberBetween(String value1, String value2) {
            addCriterion("id_number between", value1, value2, "idNumber");
            return (Criteria) this;
        }

        public Criteria andIdNumberNotBetween(String value1, String value2) {
            addCriterion("id_number not between", value1, value2, "idNumber");
            return (Criteria) this;
        }

        public Criteria andTeacherNumIsNull() {
            addCriterion("teacher_num is null");
            return (Criteria) this;
        }

        public Criteria andTeacherNumIsNotNull() {
            addCriterion("teacher_num is not null");
            return (Criteria) this;
        }

        public Criteria andTeacherNumEqualTo(Integer value) {
            addCriterion("teacher_num =", value, "teacherNum");
            return (Criteria) this;
        }

        public Criteria andTeacherNumNotEqualTo(Integer value) {
            addCriterion("teacher_num <>", value, "teacherNum");
            return (Criteria) this;
        }

        public Criteria andTeacherNumGreaterThan(Integer value) {
            addCriterion("teacher_num >", value, "teacherNum");
            return (Criteria) this;
        }

        public Criteria andTeacherNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("teacher_num >=", value, "teacherNum");
            return (Criteria) this;
        }

        public Criteria andTeacherNumLessThan(Integer value) {
            addCriterion("teacher_num <", value, "teacherNum");
            return (Criteria) this;
        }

        public Criteria andTeacherNumLessThanOrEqualTo(Integer value) {
            addCriterion("teacher_num <=", value, "teacherNum");
            return (Criteria) this;
        }

        public Criteria andTeacherNumIn(List<Integer> values) {
            addCriterion("teacher_num in", values, "teacherNum");
            return (Criteria) this;
        }

        public Criteria andTeacherNumNotIn(List<Integer> values) {
            addCriterion("teacher_num not in", values, "teacherNum");
            return (Criteria) this;
        }

        public Criteria andTeacherNumBetween(Integer value1, Integer value2) {
            addCriterion("teacher_num between", value1, value2, "teacherNum");
            return (Criteria) this;
        }

        public Criteria andTeacherNumNotBetween(Integer value1, Integer value2) {
            addCriterion("teacher_num not between", value1, value2, "teacherNum");
            return (Criteria) this;
        }

        public Criteria andDepartmentIdIsNull() {
            addCriterion("department_id is null");
            return (Criteria) this;
        }

        public Criteria andDepartmentIdIsNotNull() {
            addCriterion("department_id is not null");
            return (Criteria) this;
        }

        public Criteria andDepartmentIdEqualTo(Integer value) {
            addCriterion("department_id =", value, "departmentId");
            return (Criteria) this;
        }

        public Criteria andDepartmentIdNotEqualTo(Integer value) {
            addCriterion("department_id <>", value, "departmentId");
            return (Criteria) this;
        }

        public Criteria andDepartmentIdGreaterThan(Integer value) {
            addCriterion("department_id >", value, "departmentId");
            return (Criteria) this;
        }

        public Criteria andDepartmentIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("department_id >=", value, "departmentId");
            return (Criteria) this;
        }

        public Criteria andDepartmentIdLessThan(Integer value) {
            addCriterion("department_id <", value, "departmentId");
            return (Criteria) this;
        }

        public Criteria andDepartmentIdLessThanOrEqualTo(Integer value) {
            addCriterion("department_id <=", value, "departmentId");
            return (Criteria) this;
        }

        public Criteria andDepartmentIdIn(List<Integer> values) {
            addCriterion("department_id in", values, "departmentId");
            return (Criteria) this;
        }

        public Criteria andDepartmentIdNotIn(List<Integer> values) {
            addCriterion("department_id not in", values, "departmentId");
            return (Criteria) this;
        }

        public Criteria andDepartmentIdBetween(Integer value1, Integer value2) {
            addCriterion("department_id between", value1, value2, "departmentId");
            return (Criteria) this;
        }

        public Criteria andDepartmentIdNotBetween(Integer value1, Integer value2) {
            addCriterion("department_id not between", value1, value2, "departmentId");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameIsNull() {
            addCriterion("department_name is null");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameIsNotNull() {
            addCriterion("department_name is not null");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameEqualTo(String value) {
            addCriterion("department_name =", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameNotEqualTo(String value) {
            addCriterion("department_name <>", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameGreaterThan(String value) {
            addCriterion("department_name >", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameGreaterThanOrEqualTo(String value) {
            addCriterion("department_name >=", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameLessThan(String value) {
            addCriterion("department_name <", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameLessThanOrEqualTo(String value) {
            addCriterion("department_name <=", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameLike(String value) {
            addCriterion("department_name like", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameNotLike(String value) {
            addCriterion("department_name not like", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameIn(List<String> values) {
            addCriterion("department_name in", values, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameNotIn(List<String> values) {
            addCriterion("department_name not in", values, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameBetween(String value1, String value2) {
            addCriterion("department_name between", value1, value2, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameNotBetween(String value1, String value2) {
            addCriterion("department_name not between", value1, value2, "departmentName");
            return (Criteria) this;
        }

        public Criteria andFactionIdIsNull() {
            addCriterion("faction_id is null");
            return (Criteria) this;
        }

        public Criteria andFactionIdIsNotNull() {
            addCriterion("faction_id is not null");
            return (Criteria) this;
        }

        public Criteria andFactionIdEqualTo(Integer value) {
            addCriterion("faction_id =", value, "factionId");
            return (Criteria) this;
        }

        public Criteria andFactionIdNotEqualTo(Integer value) {
            addCriterion("faction_id <>", value, "factionId");
            return (Criteria) this;
        }

        public Criteria andFactionIdGreaterThan(Integer value) {
            addCriterion("faction_id >", value, "factionId");
            return (Criteria) this;
        }

        public Criteria andFactionIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("faction_id >=", value, "factionId");
            return (Criteria) this;
        }

        public Criteria andFactionIdLessThan(Integer value) {
            addCriterion("faction_id <", value, "factionId");
            return (Criteria) this;
        }

        public Criteria andFactionIdLessThanOrEqualTo(Integer value) {
            addCriterion("faction_id <=", value, "factionId");
            return (Criteria) this;
        }

        public Criteria andFactionIdIn(List<Integer> values) {
            addCriterion("faction_id in", values, "factionId");
            return (Criteria) this;
        }

        public Criteria andFactionIdNotIn(List<Integer> values) {
            addCriterion("faction_id not in", values, "factionId");
            return (Criteria) this;
        }

        public Criteria andFactionIdBetween(Integer value1, Integer value2) {
            addCriterion("faction_id between", value1, value2, "factionId");
            return (Criteria) this;
        }

        public Criteria andFactionIdNotBetween(Integer value1, Integer value2) {
            addCriterion("faction_id not between", value1, value2, "factionId");
            return (Criteria) this;
        }

        public Criteria andFactionNameIsNull() {
            addCriterion("faction_name is null");
            return (Criteria) this;
        }

        public Criteria andFactionNameIsNotNull() {
            addCriterion("faction_name is not null");
            return (Criteria) this;
        }

        public Criteria andFactionNameEqualTo(String value) {
            addCriterion("faction_name =", value, "factionName");
            return (Criteria) this;
        }

        public Criteria andFactionNameNotEqualTo(String value) {
            addCriterion("faction_name <>", value, "factionName");
            return (Criteria) this;
        }

        public Criteria andFactionNameGreaterThan(String value) {
            addCriterion("faction_name >", value, "factionName");
            return (Criteria) this;
        }

        public Criteria andFactionNameGreaterThanOrEqualTo(String value) {
            addCriterion("faction_name >=", value, "factionName");
            return (Criteria) this;
        }

        public Criteria andFactionNameLessThan(String value) {
            addCriterion("faction_name <", value, "factionName");
            return (Criteria) this;
        }

        public Criteria andFactionNameLessThanOrEqualTo(String value) {
            addCriterion("faction_name <=", value, "factionName");
            return (Criteria) this;
        }

        public Criteria andFactionNameLike(String value) {
            addCriterion("faction_name like", value, "factionName");
            return (Criteria) this;
        }

        public Criteria andFactionNameNotLike(String value) {
            addCriterion("faction_name not like", value, "factionName");
            return (Criteria) this;
        }

        public Criteria andFactionNameIn(List<String> values) {
            addCriterion("faction_name in", values, "factionName");
            return (Criteria) this;
        }

        public Criteria andFactionNameNotIn(List<String> values) {
            addCriterion("faction_name not in", values, "factionName");
            return (Criteria) this;
        }

        public Criteria andFactionNameBetween(String value1, String value2) {
            addCriterion("faction_name between", value1, value2, "factionName");
            return (Criteria) this;
        }

        public Criteria andFactionNameNotBetween(String value1, String value2) {
            addCriterion("faction_name not between", value1, value2, "factionName");
            return (Criteria) this;
        }

        public Criteria andTPasswordIsNull() {
            addCriterion("t_password is null");
            return (Criteria) this;
        }

        public Criteria andTPasswordIsNotNull() {
            addCriterion("t_password is not null");
            return (Criteria) this;
        }

        public Criteria andTPasswordEqualTo(String value) {
            addCriterion("t_password =", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordNotEqualTo(String value) {
            addCriterion("t_password <>", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordGreaterThan(String value) {
            addCriterion("t_password >", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("t_password >=", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordLessThan(String value) {
            addCriterion("t_password <", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordLessThanOrEqualTo(String value) {
            addCriterion("t_password <=", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordLike(String value) {
            addCriterion("t_password like", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordNotLike(String value) {
            addCriterion("t_password not like", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordIn(List<String> values) {
            addCriterion("t_password in", values, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordNotIn(List<String> values) {
            addCriterion("t_password not in", values, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordBetween(String value1, String value2) {
            addCriterion("t_password between", value1, value2, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordNotBetween(String value1, String value2) {
            addCriterion("t_password not between", value1, value2, "tPassword");
            return (Criteria) this;
        }

        public Criteria andIsProfessorIsNull() {
            addCriterion("is_professor is null");
            return (Criteria) this;
        }

        public Criteria andIsProfessorIsNotNull() {
            addCriterion("is_professor is not null");
            return (Criteria) this;
        }

        public Criteria andIsProfessorEqualTo(Integer value) {
            addCriterion("is_professor =", value, "isProfessor");
            return (Criteria) this;
        }

        public Criteria andIsProfessorNotEqualTo(Integer value) {
            addCriterion("is_professor <>", value, "isProfessor");
            return (Criteria) this;
        }

        public Criteria andIsProfessorGreaterThan(Integer value) {
            addCriterion("is_professor >", value, "isProfessor");
            return (Criteria) this;
        }

        public Criteria andIsProfessorGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_professor >=", value, "isProfessor");
            return (Criteria) this;
        }

        public Criteria andIsProfessorLessThan(Integer value) {
            addCriterion("is_professor <", value, "isProfessor");
            return (Criteria) this;
        }

        public Criteria andIsProfessorLessThanOrEqualTo(Integer value) {
            addCriterion("is_professor <=", value, "isProfessor");
            return (Criteria) this;
        }

        public Criteria andIsProfessorIn(List<Integer> values) {
            addCriterion("is_professor in", values, "isProfessor");
            return (Criteria) this;
        }

        public Criteria andIsProfessorNotIn(List<Integer> values) {
            addCriterion("is_professor not in", values, "isProfessor");
            return (Criteria) this;
        }

        public Criteria andIsProfessorBetween(Integer value1, Integer value2) {
            addCriterion("is_professor between", value1, value2, "isProfessor");
            return (Criteria) this;
        }

        public Criteria andIsProfessorNotBetween(Integer value1, Integer value2) {
            addCriterion("is_professor not between", value1, value2, "isProfessor");
            return (Criteria) this;
        }

        public Criteria andStateIsNull() {
            addCriterion("state is null");
            return (Criteria) this;
        }

        public Criteria andStateIsNotNull() {
            addCriterion("state is not null");
            return (Criteria) this;
        }

        public Criteria andStateEqualTo(Integer value) {
            addCriterion("state =", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotEqualTo(Integer value) {
            addCriterion("state <>", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThan(Integer value) {
            addCriterion("state >", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThanOrEqualTo(Integer value) {
            addCriterion("state >=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThan(Integer value) {
            addCriterion("state <", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThanOrEqualTo(Integer value) {
            addCriterion("state <=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateIn(List<Integer> values) {
            addCriterion("state in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotIn(List<Integer> values) {
            addCriterion("state not in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateBetween(Integer value1, Integer value2) {
            addCriterion("state between", value1, value2, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotBetween(Integer value1, Integer value2) {
            addCriterion("state not between", value1, value2, "state");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}