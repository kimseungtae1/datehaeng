package com.koreait.dto;

public class MemberDTO {
	private String mUserid;
	private String mPw;
	private String mName;
	private String mBirth;
	private String mPhone;
	private String mAddress;
	private String mGender;
	private String mEmail;
	
	public MemberDTO() {
	}

	public MemberDTO(String mUserid, String mPw, String mName, String mBirth, String mPhone, String mAddress,
			String mGender, String mEmail) {
		super();
		this.mUserid = mUserid;
		this.mPw = mPw;
		this.mName = mName;
		this.mBirth = mBirth;
		this.mPhone = mPhone;
		this.mAddress = mAddress;
		this.mGender = mGender;
		this.mEmail = mEmail;
	}

	/**
	 * @return the mUserid
	 */
	public String getmUserid() {
		return mUserid;
	}

	/**
	 * @param mUserid the mUserid to set
	 */
	public void setmUserid(String mUserid) {
		this.mUserid = mUserid;
	}

	/**
	 * @return the mPw
	 */
	public String getmPw() {
		return mPw;
	}

	/**
	 * @param mPw the mPw to set
	 */
	public void setmPw(String mPw) {
		this.mPw = mPw;
	}

	/**
	 * @return the mName
	 */
	public String getmName() {
		return mName;
	}

	/**
	 * @param mName the mName to set
	 */
	public void setmName(String mName) {
		this.mName = mName;
	}

	/**
	 * @return the mBirth
	 */
	public String getmBirth() {
		return mBirth;
	}

	/**
	 * @param mBirth the mBirth to set
	 */
	public void setmBirth(String mBirth) {
		this.mBirth = mBirth;
	}

	/**
	 * @return the mPhone
	 */
	public String getmPhone() {
		return mPhone;
	}

	/**
	 * @param mPhone the mPhone to set
	 */
	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}

	/**
	 * @return the mAddress
	 */
	public String getmAddress() {
		return mAddress;
	}

	/**
	 * @param mAddress the mAddress to set
	 */
	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}

	/**
	 * @return the mGender
	 */
	public String getmGender() {
		return mGender;
	}

	/**
	 * @param mGender the mGender to set
	 */
	public void setmGender(String mGender) {
		this.mGender = mGender;
	}

	/**
	 * @return the mEmail
	 */
	public String getmEmail() {
		return mEmail;
	}

	/**
	 * @param mEmail the mEmail to set
	 */
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "MemberDTO [mUserid=" + mUserid + ", mPw=" + mPw + ", mName=" + mName + ", mBirth=" + mBirth
				+ ", mPhone=" + mPhone + ", mAddress=" + mAddress + ", mGender=" + mGender + ", mEmail=" + mEmail
				+ "]";
	}
	
	
}



