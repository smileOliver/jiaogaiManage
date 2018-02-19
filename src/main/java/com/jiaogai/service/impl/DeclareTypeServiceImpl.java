package com.jiaogai.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.jiaogai.commons.result.Tree;
import com.jiaogai.commons.utils.StringUtils;
import com.jiaogai.mapper.DeclareTypeMapper;
import com.jiaogai.mapper.TypeProfessorMapper;
import com.jiaogai.model.DeclareType;
import com.jiaogai.model.Resource;
import com.jiaogai.model.RoleResource;
import com.jiaogai.model.TypeProfessor;
import com.jiaogai.service.IDeclareTypeService;
@Service
public class DeclareTypeServiceImpl extends ServiceImpl<DeclareTypeMapper, DeclareType> 
implements IDeclareTypeService{

	@Autowired
	private DeclareTypeMapper declareTypeMapper;
	@Autowired
	private TypeProfessorMapper typeProfessorMapper;
	
	
	
	@Override
	public List<Tree> selectAllTree() {
		// TODO Auto-generated method stub
		List<Tree> trees=new ArrayList<Tree>();
		//DeclareType declareType=new DeclareType();
		 /*EntityWrapper<DeclareType> wrapper = new EntityWrapper<DeclareType>();
		 wrapper.setEntity(declareType);*/
		List<DeclareType> declareTypes=declareTypeMapper.selectAllTypes();
		if(declareTypes==null){
			return trees;
		}
		for (DeclareType declareType2 : declareTypes) {
			Tree tree = new Tree();
			tree.setId(declareType2.getId());
			tree.setText(declareType2.getTypeName());
			trees.add(tree);
		}
		
		return trees;
	}

	@Override
	public void updateTypeProfessor(Long id, String typeIds) {
		// TODO Auto-generated method stub
		//根据专家id获取对应的类型权限
		List<TypeProfessor> typeProfessors=typeProfessorMapper.selectByTeacherId(id);
		
		// 如果类型id为空，判断为清空专家 类型权限
		if (StringUtils.isBlank(typeIds)) {
            return;
        }
		//对比判断应该添加还是删除或者不变
		//这是需要删除的数组
		List<Long> des=new ArrayList<Long>();
		
		String[] typeIdArray = typeIds.split(",");
		if(typeProfessors.size()!=0){
			for (TypeProfessor typeProfessor : typeProfessors) {
				boolean flag=false;
				for (String typeId : typeIdArray) {
					long typeid=Long.parseLong(typeId);
					if(typeProfessor.getTypeId()==typeid){
						//没有选择权限，所以应该把此权限删除
						flag=true;
					}
				}
				if(flag==false){
					//如果为false 证明typeIds里面已经没有这个typeid了，把它加入到数组中然后删除
					des.add(typeProfessor.getTypeId());
				}
			}
			
			//删除未再次选中的
			if(des.size()!=0){
				for (Long long1 : des) {
					TypeProfessor typeProfessor=new TypeProfessor();
					typeProfessor.setTeacherId(id);
					typeProfessor.setTypeId(long1);
					typeProfessorMapper.deleteTypeProfessor(typeProfessor);
				}
			}
			//这是需要添加的数组
			List<Long> ins=new ArrayList<Long>();
			
			for (String typeId : typeIdArray) {
				long typeid=Long.parseLong(typeId);
				boolean flag=true;
				for (TypeProfessor typeProfessor : typeProfessors) {
					if(typeProfessor.getTypeId()==typeid){
						flag=false;
					}
				}
				if(flag){
					ins.add(typeid);
				}
			}
		   //添加新的 
			for (Long long1 : ins) {
				TypeProfessor typeProfessor=new TypeProfessor();
				typeProfessor.setTeacherId(id);
				typeProfessor.setTypeId(long1);
				typeProfessorMapper.insert(typeProfessor);
			}
		}else{
			for (String typeId : typeIdArray) {
				
				TypeProfessor typeProfessor=new TypeProfessor();
				typeProfessor.setTeacherId(id);
				typeProfessor.setTypeId(Long.parseLong(typeId));
				typeProfessorMapper.insert(typeProfessor);
			}
		}
	}

}
