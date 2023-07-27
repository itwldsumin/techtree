package com.posep.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.posep.domain.Class3VO;
import com.posep.domain.FilesVO;
import com.posep.domain.QnaVO;
import com.posep.domain.SearchCriteria;
import com.posep.domain.TechnologistVO;
import com.posep.dto.LoginDTO;

@Repository
public class TechnologistDAOImpl implements TechnologistDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.posep.mapper.TechnologistMapper";

	@Override
	public String adcreate(TechnologistVO TechnologistVO) throws Exception {
		session.insert(namespace + ".adcreate", TechnologistVO);
		return TechnologistVO.getTechId();

	}

	@Override
	public TechnologistVO adread(String techId) throws Exception {
		return session.selectOne(namespace + ".adread", techId);
	}

	@Override
	public void adupdate(TechnologistVO TechnologistVO) throws Exception {
		session.update(namespace + ".adupdate", TechnologistVO);

	}

	// 과학 기술인 비밀번호 수정
	@Override
	public void pwupdate(TechnologistVO tVo) throws Exception {
		session.update(namespace + ".pwupdate", tVo);

	}

	@Override
	public void addelete(String techId) throws Exception {
		session.delete(namespace + ".addelete", techId);

	}

	@Override
	public List<TechnologistVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public TechnologistVO read(String techId) throws Exception {
		return session.selectOne(namespace + ".read", techId);
	}

	@Override
	public List<TechnologistVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<TechnologistVO> listT(String class3No) throws Exception {
		return session.selectList(namespace + ".listT", class3No);

	}

	@Override
	public TechnologistVO login(LoginDTO dto) {
		return session.selectOne(namespace + ".login", dto);
	}

	@Override
	public List<QnaVO> tMainConsultList(String techId) throws Exception {
		return session.selectList(namespace + ".tMainConsultList", techId);
	}

	@Override
	public List<QnaVO> tMainCooperatList(String techId) throws Exception {
		return session.selectList(namespace + ".tMainCooperList", techId);
	}

	// 파일 등록
	@Override
	public void insertFile(FilesVO fVo) throws Exception {
		session.insert(namespace + ".insertFile", fVo);

	}

	// 파일 삭제
	@Override
	public void deleteFile(String techId) throws Exception {
		session.delete(namespace + ".deleteFile", techId);

	}

	// 파일 목록
	@Override
	public List<FilesVO> list(String techId) throws Exception {
		return session.selectList(namespace + ".fileList", techId);
	}

	// 전공 팝업
	@Override
	public List<Class3VO> searchClass3(String calss3Name) throws Exception {
		return session.selectList(namespace + ".searchClass3", calss3Name);
	}

	@Override
	public List<Class3VO> class3List() throws Exception {
		return session.selectList(namespace + ".class3List");
	}

}
