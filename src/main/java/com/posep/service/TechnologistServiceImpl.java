package com.posep.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.posep.domain.Class3VO;
import com.posep.domain.FilesVO;
import com.posep.domain.QnaVO;
import com.posep.domain.SearchCriteria;
import com.posep.domain.TechnologistVO;
import com.posep.persistence.TechnologistDAO;

@Service
public class TechnologistServiceImpl implements TechnologistService {

	@Inject
	private TechnologistDAO dao;

	@Override
	public void adregist(TechnologistVO TechnologistVO) throws Exception {

		String techId = dao.adcreate(TechnologistVO);

		// 추가 이미지 존재 여부 IF문
		if (TechnologistVO.getFiles() != null) {

			// 추가 이미지 저장 FOR문
			for (int i = 0; i < TechnologistVO.getFiles().length; i++) {

				// 추가 이미지 저장

				FilesVO fVo = new FilesVO();
				fVo.setTechId(techId);
				fVo.setFileName(TechnologistVO.getFiles()[i]);

				System.out.println("apVo: " + fVo.toString());

				// 추가 이미지 저장
				dao.insertFile(fVo);

			}
		}

	}

	@Override
	public void admodify(TechnologistVO TechnologistVO) throws Exception {
		dao.adupdate(TechnologistVO);

		// 소속된 첨부파일 삭제
		dao.deleteFile(TechnologistVO.getTechId());

		// 추가 이미지 존재 여부 IF문
		if (TechnologistVO.getFiles() != null) {

			// 추가 이미지 저장 FOR문
			for (int i = 0; i < TechnologistVO.getFiles().length; i++) {

				// 추가 이미지 저장
				dao.deleteFile(TechnologistVO.getTechId());

				FilesVO fVo = new FilesVO();
				fVo.setTechId(TechnologistVO.getTechId());
				fVo.setFileName(TechnologistVO.getFiles()[i]);

				System.out.println("apVo: " + fVo.toString());

				// 추가 이미지 저장
				dao.insertFile(fVo);

			}
		}

	}

	@Override
	public void adremove(String techId) throws Exception {
		dao.deleteFile(techId);
		dao.addelete(techId);
	}

	@Override
	public TechnologistVO adread(String techId) throws Exception {
		return dao.adread(techId);
	}

	@Override
	public List<TechnologistVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public TechnologistVO read(String techId) throws Exception {
		return dao.read(techId);

	}

	// 회원 view 기술인 전체 리스트
	@Override
	public List<TechnologistVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<TechnologistVO> listT(String class3No) throws Exception {
		return dao.listT(class3No);
	}

	// 기술인 대시보드 최근 문의글
	@Override
	public List<QnaVO> tMainConsultList(String techId) throws Exception {
		// TODO Auto-generated method stub
		return dao.tMainConsultList(techId);
	}

	@Override
	public List<QnaVO> tMainCooperatList(String techId) throws Exception {
		// TODO Auto-generated method stub
		return dao.tMainCooperatList(techId);
	}

	@Override
	public List<FilesVO> fileList(String techId) throws Exception {

		return dao.list(techId);
	}

	
	//전공팝업
	@Override
	public List<Class3VO> searchClass3(String calss3Name) throws Exception {
		return dao.searchClass3(calss3Name);
	}

	@Override
	public List<Class3VO> class3List() throws Exception {
		return dao.class3List();
	}

	@Override
	public void pwModify(TechnologistVO TechnologistVO) throws Exception {
		  dao.pwupdate(TechnologistVO);
		
	}

}